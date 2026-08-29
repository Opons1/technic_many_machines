tmm = technic_many_machines
--limited to 31 in every dir, made so it fits in node meta
function tmm.postoint(pos)
    return (pos.x + 32) + (pos.y + 32) * 64 + (pos.z + 32) * 4096
end
--converts it back to a number
function tmm.inttopos(int)
    local pos = {}
    
    pos.x = int % 64 - 32
    int = math.floor(int / 64)
    pos.y = int % 64 - 32
    int = math.floor(int / 64)
    pos.z = int - 32

    return pos
end
--checks if two given positions are equal
function tmm.positions_are_equal(pos1, pos2)
    if pos1.x == pos2.x 
    and pos1.y == pos2.y
    and pos1.z == pos2.z
    then return true
        else return false
    end
end
--digs the node at position (i feel like i went a little crazy with it)
local digblacklist = {
    ["ignore"] = true,
    ["air"] = true,
}



--why, fakelib, why
function core.is_player(player)
	-- a table being a player is also supported because it quacks sufficiently
	-- like a player if it has the is_player function
	local t = type(player)
	return (t == "userdata" or t == "table") and
		type(player.is_player) == "function" and player:is_player()
end

local fakeplayer = {}
fakeplayer.name = "temp"
fakeplayer.inv = false
fakeplayer.meta = false

function fakeplayer:get_player_name()
    return fakeplayer.name or "temp"
end

function fakeplayer:get_wielded_item()
    return ItemStack("")
end

function fakeplayer:set_wielded_item()
    return false
end

function fakeplayer:is_player()
    return true
end

function fakeplayer:get_inventory()
    return fakeplayer.inv
end

function fakeplayer:get_meta()
    return fakeplayer.meta
end

function fakeplayer:get_player_control()
    return {
        up = false,
        down = false,
        left = false,
        right = false,
        jump = false,
        aux1 = false,
        sneak = false,
        dig = false,
        place = false,
        LMB = true,
        RMB = false,
        zoom = false,
    }
end

fakeplayer.is_fake_player = true

function core.check_player_privs(name, ...)
	if core.is_player(name) then
		name = name:get_player_name()
	elseif type(name) ~= "string" then
		error("core.check_player_privs expects a player or playername as " ..
			"argument, not " .. type(name), 2)
	end

	local requested_privs = {...}
	local player_privs = core.get_player_privs(name)
	local missing_privileges = {}

	if type(requested_privs[1]) == "table" then
		-- We were provided with a table like { privA = true, privB = true }.
		for priv, value in pairs(requested_privs[1]) do
			if value and not player_privs[priv] then
				missing_privileges[#missing_privileges + 1] = priv
			end
		end
	else
		-- Only a list, we can process it directly.
		for key, priv in pairs(requested_privs) do
			if not player_privs[priv] then
				missing_privileges[#missing_privileges + 1] = priv
			end
		end
	end

	if #missing_privileges > 0 then
		return false, missing_privileges
	end

	return true, ""
end

function tmm.dig_node(meta, pos, data)
    local node = core.get_node(pos) or data.node
    local nodeinfo = core.registered_nodes[node.name]
    local nodename = node.name or ""
    local name = data.name

    fakeplayer.name = name or "temp"
    fakeplayer.meta = meta
    if core.is_protected(pos, fakeplayer) then
        return false
    end

    if digblacklist[nodename] then
        return false
    end

    local drops = core.get_node_drops(node)
    
    local on_dig = nodeinfo.on_dig
    local can_dig = nodeinfo.can_dig
    local returnvalue
    local inv = meta:get_inventory()

    fakeplayer.inv = inv

    if can_dig and not can_dig(pos, fakeplayer) then return false end

    if on_dig then
        returnvalue = on_dig(pos, node, fakeplayer)
    else
        core.set_node(pos, {name = "air"})
        for index, item in ipairs(drops) do
            local rest = inv:add_item("main", item)
            if rest then
                core.add_item(pos, rest)
            end
        end
    end
end