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


local fakeplayer = fakelib.create_player({
})


function tmm.dig_node(meta, pos, data, userpos)
    if userpos then
        fakeplayer.data.position = pos
    end
    local node = core.get_node(pos) or data.node
    local nodeinfo = core.registered_nodes[node.name]
    local nodename = node.name or ""
    local name = data.name

    fakeplayer.data.name = name or "temp"
    core.chat_send_all(fakeplayer:get_player_name())
    fakeplayer.data.metadata = meta
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
    fakeplayer.data.position = pos
    fakeplayer.data.inventory = inv


    if on_dig then
        core.chat_send_all("Using on_dig: " .. nodename)
        return on_dig(pos, node, fakeplayer)
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