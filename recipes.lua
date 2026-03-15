--recipes for machines
core.register_craft({
    output = "technic_many_machines:compressor_piston",
    recipe = {
        {"technic:cast_iron_ingot", "basic_materials:carbon_steel_bar", "technic:cast_iron_ingot"},
        {"technic:cast_iron_ingot", "basic_materials:carbon_steel_bar", "technic:cast_iron_ingot"},
        {"technic:carbon_plate", "technic:carbon_plate", "technic:carbon_plate"},
}})
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