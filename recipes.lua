--recipes for machines
core.register_craft({
    output = "technic_many_machines:hv_masscompressor",
    recipe = {
        {"technic:composite_plate", "technic_many_machines:compressor_piston", "technic:composite_plate"},
        {"technic:hv_cable", "technic:hv_transformer", "default:tinblock"},
        {"technic:carbon_plate", "technic:mv_compressor", "technic:carbon_plate"},
}})
core.register_craft({
    output = "technic_many_machines:hv_alloy_furnace",
    recipe = {
        {"technic:mv_alloy_furnace", "technic:mv_alloy_furnace", "technic:mv_alloy_furnace"},
        {"technic:mv_alloy_furnace", "technic:mv_alloy_furnace", "technic:mv_alloy_furnace"},
        {"technic:composite_plate", "technic:hv_transformer", "technic:composite_plate"},
}})
core.register_craft({
    output = "technic_many_machines:hv_advancedalloyfurnace",
    recipe = {
        {"technic:composite_plate", "technic:mv_alloy_furnace", "technic:composite_plate"},
        {"technic:red_energy_crystal", "technic:hv_transformer", "technic:hv_cable"},
        {"technic:composite_plate", "technic:carbon_plate", "technic:composite_plate"},
}})
core.register_craft({
    output = "technic_many_machines:hv_sawmill",
    recipe = {
        {"technic:composite_plate", "technic:hv_transformer", "technic:composite_plate"},
        {"technic:diamond_drill_head", "technic:machine_casing", "technic_many_machines:carbon_plate"},
        {"technic:composite_place", "technic:hv_cable", "technic:composite_plate"},
    }
})
core.register_craft({
    output = "technic_many_machines:lv_moving_walkway",
    recipe = {
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
        {"basic_materials:gear_steel", "technic:machine_casing", "basic_materials:gear_steel"},
        {"basic_materials:motor", "technic:lv_cable", "basic_materials:motor"},
    }
})
core.register_craft({
    output = "technic_many_machines:lv_drop_extractor",
    recipe = {
        {"default:steel_ingot", "technic:lv_cable", "default:steel_ingot"},
        {"default:pick_steel", "technic:machine_casing", "basic_materials:gear_steel"},
        {"default:steel_ingot", "technic:lv_cable", "default:steel_ingot"},
    }
})
core.register_craft({
    output = "technic_many_machines:mv_drop_extractor",
    recipe = {
        {"technic:stainless_steel_ingot", "technic:mv_cable", "technic:stainless_steel_ingot"},
        {"default:pick_mese", "technic_many_machines:lv_drop_extractor", "basic_materials:gear_steel"},
        {"technic:stainless_steel_ingot", "technic:mv_cable", "technic:stainless_steel_ingot"},
    }
})
core.register_craft({
    output = "technic_many_machines:hv_drop_extractor",
    recipe = {
        {"technic:composite_plate", "technic:hv_cable", "technic:composite_plate"},
        {"default:pick_diamond", "technic_many_machines:mv_drop_extractor", "basic_materials:gear_steel"},
        {"technic:composite_plate", "technic:hv_cable", "technic:composite_plate"},
    }
})
core.register_craft({
    output = "technic_many_machines:lv_cobble_generator",
    recipe = {
        {"basic_materials:gear_steel", "technic:lv_transformer", "basic_materials:gear_steel"},
        {"bucket:bucket_water", "technic:machine_casing", "bucket:bucket_lava"},
        {"technic:cast_iron_ingot", "technic:lv_cable", "technic:cast_iron_ingot"},
    },
    replacements = {
        {"bucket:bucket_water", "bucket:bucket_empty"},
        {"bucket:bucket_lava", "bucket:bucket_empty"},
    }
})
core.register_craft({
    output = "technic_many_machines:lv_cobble_generator",
    recipe = {
        {"basic_materials:gear_steel", "technic:lv_transformer", "basic_materials:gear_steel"},
        {"default:ice", "technic:machine_casing", "bucket:bucket_lava"},
        {"technic:cast_iron_ingot", "technic:lv_cable", "technic:cast_iron_ingot"},
    },
    replacements = {
        {"bucket:bucket_lava", "bucket:bucket_empty"},
    }
})
core.register_craft({
    output = "technic_many_machines:mv_cobble_generator",
    recipe = {
        {"technic:stainless_steel_ingot", "technic:mv_transformer", "technic:stainless_steel_ingot"},
        {"technic_many_machines:lv_cobble_generator", "technic:machine_casing", "technic_many_machines:lv_cobble_generator"},
        {"technic:stainless_steel_ingot", "technic:mv_cable", "technic:stainless_steel_ingot"},
    }
})
core.register_craft({
    output = "technic_many_machines:hv_cobble_generator",
    recipe = {
        {"technic:composite_plate", "technic:hv_transformer", "technic:composite_plate"},
        {"technic_many_machines:mv_cobble_generator", "technic:machine_casing", "technic_many_machines:mv_cobble_generator"},
        {"technic:composite_plate", "technic:hv_cable", "technic:composite_plate"},
    }
})

--machine parts
core.register_craft({
    output = "technic_many_machines:compressor_piston",
    recipe = {
        {"technic:cast_iron_ingot", "basic_materials:carbon_steel_bar", "technic:cast_iron_ingot"},
        {"technic:cast_iron_ingot", "basic_materials:carbon_steel_bar", "technic:cast_iron_ingot"},
        {"technic:carbon_plate", "technic:carbon_plate", "technic:carbon_plate"},
}})

--simple materials

--blocks
local raling = "technic_many_machines:radiant_alloy_ingot"
local ralblock = "technic_many_machines:radiant_alloy_block"
local raldust = "technic_many_machines:radiant_alloy_dust"
local ralplate = "technic_many_machines:radiant_alloy_plate"

core.register_craft({
    output = ralblock,
    type = "shapeless",
    recipe = {raling, raling, raling, raling, raling, raling, raling, raling, raling}
})
core.register_craft({
    output = raling,
    type = "shapeless",
    recipe = {ralblock}
})
core.register_craft({
    type = "cooking", 
    output = raling,
    recipe = raldust,
    time = 6,
})
technic.register_grinder_recipe({
    time = 4,
    input = {raling},
    output = {raldust.." 2"}
})
technic.register_compressor_recipe({
    time = 8,
    input = {raling .. " 5"},
    output = {ralplate}
})
