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

