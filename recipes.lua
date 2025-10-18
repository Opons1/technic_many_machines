--recipes
core.register_craft({
    output = "technic_many_machines:compressor_piston",
    recipe = {
        {"technic:cast_iron_ingot", "basic_materials:carbon_steel_bar", "technic:cast_iron_ingot"},
        {"technic:cast_iron_ingot", "basic_materials:carbon_steel_bar", "technic:cast_iron_ingot"},
        {"technic:carbon_plate", "technic:carbon_plate", "technic:carbon_plate"},
    }
})
core.register_craft({
    output = "technic_many_machines:hv_masscompressor",
    recipe = {
        {"technic:composite_plate", "technic_many_machines:compressor_piston", "technic:composite_plate"},
        {"technic:hv_cable", "technic:hv_transformer", "default:tinblock"},
        {"technic:carbon_plate", "technic:mv_compressor", "technic:carbon_plate"},
    }
})
