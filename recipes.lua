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
        {"technic:composite_plate", "technic:mv_compressor", "technic:composite_plate"},
        {"technic_many_machines:compressor_piston", "technic:hv_transformer", "technic_many_machines:compressor_piston"},
        {"technic:carbon_plate", "technic:hv_cable", "technic:carbon_plate"},
    }
})
