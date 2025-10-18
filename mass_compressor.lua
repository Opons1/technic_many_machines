-- for whatever reason you want to make your own mass compressor
function technic.register_mass_compressor(data)
	data.typename = "mass_compressing"
	data.machine_name = "masscompressor"
	data.machine_desc = technic.getter("%s Mass Compressor")

	technic.register_base_machine(data)
end
--we be mass compressing now
technic.register_recipe_type("mass_compressing", {description = "Mass Compressing", input_size = 2})
technic.register_mass_compressor({tier = "HV", demand = {1600, 1200, 800}, speed = 4, upgrade = 1, tube = 1})
core.register_craftitem("technic_many_machines:compressor_piston", {
    description = "Compressor Piston",
    inventory_image = "technic_many_machines_compressor_piston.png",
})
core.override_item("technic_many_machines:hv_masscompressor_active", {
    tiles = {
        "technic_many_machines_hv_masscompressor_top.png",
        "technic_many_machines_hv_masscompressor_bottom.png",
        "technic_many_machines_hv_masscompressor_side.png",
        "technic_many_machines_hv_masscompressor_side.png",
        "technic_many_machines_hv_masscompressor_side.png",
         {name = "technic_many_machines_hv_masscompressor_front_active.png",
        animation = {
            type = "vertical_frames",
            aspect_w = 16,
            aspect_h = 16,
            length = 1, }, },
        },
})
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
function technic.register_mass_compressor_recipe(data)
    data.time = data.time or 4
    technic.register_recipe("mass_compressing", data)
end
technic.register_mass_compressor_recipe({
    input = {"default:stone", "default:stone"},
    output = "technic:composite_plate",
    time = 2,
})