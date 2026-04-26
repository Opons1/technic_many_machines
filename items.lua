local S = core.get_translator("technic_many_machines")
local function register_craftitem(name, def)
    core.register_craftitem("technic_many_machines:"..name, def)
end
local register_node = function(name, def)
    core.register_node("technic_many_machines:"..name, def)
end
--some modified textures that are useful
local base_ingot = "default_steel_ingot.png^[colorize:#ffffff:100^[hsl:0:100:0"
local base_dust = "technic_silver_dust.png^[hsl:0:100:0"
local base_plate = "technic_many_machines_base_plate.png"
local base_metal_block = "technic_many_machines_base_metal_block.png"


local enable_test_items = core.settings:get_bool("technic_many_machines_enable_test_items", false)
if enable_test_items then
    register_craftitem("base_ingot", {
        description = S("Base Ingot (Test Item)"),
        inventory_image = base_ingot,
    })
    register_craftitem("base_dust", {
        description = S("Base Dust (Test Item)"),
        inventory_image = base_dust,
    })
    register_craftitem("base_plate", {
        description = S("Base Plate (Test Item)"),
        inventory_image = base_plate,
    })
    register_node("base_metal_block", {
        description = S("Base Metal Block (Test Item)"),
        tiles = {base_metal_block},
        groups = {cracky = 1, level = 2},
    })
end


--machine parts
register_craftitem("compressor_piston", {
    description = S("Compressor Piston"),
    inventory_image = "technic_many_machines_compressor_piston.png",
})

--ingots
--radiant alloy ingot is made by alloying 0.0 fissile uranium with a mese fragment and stainless steel in advanced alloy furnace
register_craftitem("radiant_alloy_ingot", {
    description = S("Radiant Alloy"),
    inventory_image = base_ingot.."^[colorize:#c8ff00:100",
    light_source = 7,
})

register_craftitem("radiant_alloy_dust", {
    description = S("Radiant Alloy Dust"),
    inventory_image = base_dust.."^[colorize:#c8ff00:100",
    light_source = 7,
})

register_craftitem("radiant_alloy_plate", {
    description = S("Radiant Alloy Plate"),
    inventory_image = base_plate.."^[colorize:#c8ff00:100",
    light_source = 7,
})

register_node("radiant_alloy_block", {
    description = S("Radiant Alloy Block"),
    tiles = {base_metal_block.."^[colorize:#c8ff00:100"},
    groups = {cracky = 1, level = 2},
    light_source = 7,
})
--thorium, made in the radiation chamber by leaving uranium dust in it. The higher the fissile of uranium, the faster it is.
register_craftitem("thorium_ingot", {
    description = S("Thorium Ingot"),
    inventory_image = base_ingot.."^[colorize:#273126:150",
})
register_craftitem("thorium_dust", {
    description = S("Thorium Dust"),
    inventory_image = base_dust.."^[colorize:#273126:150",
})
register_node("thorium_block", {
    description = S("Thorium Block"),
    tiles = {base_metal_block.."^[colorize:#273126:150"},
    groups = {cracky = 1, level = 2, radioactive = 2},
})
--asteroid nodes
--it can drop copper, tin, iron, coal, and lead in dust form
local drops = {
    max_items = 1,
    items = {
        {items = {"technic:copper_dust"}, rarity = 10},
        {items = {"technic:tin_dust"}, rarity = 10},
        {items = {"technic:wrought_iron_dust"}, rarity = 10},
        {items = {"technic:coal_dust"}, rarity = 10},
        {items = {"technic:lead_dust"}, rarity = 10},
        {items = {"technic_many_machines:asteroid_stone"}},
    }
}
core.register_node("technic_many_machines:asteroid_stone", {
    description = S("Asteroid Stone"),
    tiles = {"technic_many_machines_asteroid_stone.png"},   
    groups = {cracky = 3, stone = 1, level = 2},
    drop = drops,
})

--multiblock nodes
local function register_multiblock_part(name, data)
    data.groups["multiblock_part"] = 1
    data.on_destruct = function(pos)
        local meta = minetest.get_meta(pos)
        local controller_str = meta:get_string("multiblockcontrollerpos")
        -- Check if the string is NOT empty before proceeding
        if controller_str ~= "" then
            local ctrl_pos = minetest.string_to_pos(controller_str)
            if ctrl_pos then
                local ctrl_meta = minetest.get_meta(ctrl_pos)
                -- Use 0 to represent 'false' in metadata
                ctrl_meta:set_int("multiblockactive", 0)
            end
        end
    end
    register_node(name, data)
end
register_multiblock_part("hv_mb_airlock", {
    description = "HV Airlock Part",
    paramtype = "light",
    walkable = false,
    drawtype = "glasslike",
    tiles = {"technic_many_machines_multiblock_hv_airlock.png^[opacity:200"},
    groups = {cracky = 1, level = 2},
})
register_multiblock_part("hv_mb_glass", {
    description = "HV Glass Part",
    paramtype = "light",
    drawtype = "glasslike",
    tiles = {"technic_many_machines_multiblock_hv_glass.png^[opacity:200"},
    groups = {cracky = 1, level = 2},
})
register_multiblock_part("hv_mb_casing", {
    description = "HV Machine Casing Part",
    tiles = {"technic_many_machines_damaged_hv_frame.png"},
    groups = {cracky = 1, level = 2},
})
--misc other stuff
register_craftitem("radioactive_sludge", {
    description = S("Radioactive Sludge"),
    inventory_image = "technic_many_machines_radioactive_sludge.png",
    light_source = 7,
})