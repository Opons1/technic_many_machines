local bricks = {
    "basic_materials:brass_block",
    "default:bronzeblock",
    "default:copperblock",
    "default:goldblock",
    "default:steelblock",
    "default:tinblock",
    "moreores:mithril_block",
    "moreores:silver_block",
    "technic:carbon_steel_block",
    "technic:cast_iron_block",
    "technic:chromium_block",
    "technic:lead_block",
    "technic:stainless_steel_block",
    "technic_many_machines:forge_block",
    "technic_many_machines:radiant_alloy_block",
    "technic_many_machines:asteroid_stone",
    "technic:sulfur_block",
    "basic_materials:cement_block",
    "default:diamondblock",
    "default:meseblock"
}

local blocks = {
    "technic_many_machines:asteroid_stone",
    "technic:granite",
    "technic:marble",
    "basic_materials:cement_block",
}


for _, name in ipairs(bricks) do
    local node = core.registered_nodes[name]
    if node then
        local tile = node.tiles[1]
        local newtile = tile .. "^(technic_many_machines_brick_overlay.png^[opacity:100)"
        local newname = "technic_many_machines:" .. "brick_" .. string.split(name, ":")[2]
        local newname = newname:gsub(" Block", "")
        core.register_node(newname, {
            description = node.description .. " Bricks",
            tiles = {newtile},
            groups = node.groups,
            light_source = node.light_source or 0,
            sounds = node.sounds or nil
        })
        core.register_craft({
            output = newname .. " 4",
            recipe = {
                {name, name},
                {name, name}
            }
        })
    end
end

for _, name in ipairs(blocks) do
    local node = core.registered_nodes[name]
    if node then
        local tile = node.tiles[1]
        local newtile = tile .. "^(technic_many_machines_polished_overlay.png^[opacity:100)"
        local newname = "technic_many_machines:" .. "block_" .. string.split(name, ":")[2]
        core.register_node(newname, {
            description = node.description .. " Block",
            tiles = {newtile},
            groups = node.groups,
            light_source = node.light_source or 0,
            sounds = node.sounds or nil
        })
        core.register_craft({
            output = newname .. " 4",
            recipe = {
                {name, name, name},
                {name, name, name},
                {name, name, name}
            }
        })
    end
end
