--compressor, but faster and has two slots now for annoying people
-- for whatever reason you want to make your own mass compressor
function technic_many_machines.register_mass_compressor(data)
	data.typename = "mass_compressing"
	data.machine_name = "masscompressor"
	data.machine_desc = technic.getter("%s Mass Compressor")

	technic.register_base_machine(data)
end
--we be mass compressing now
technic.register_recipe_type("mass_compressing", {description = "Mass Compressing", input_size = 2})
technic_many_machines.register_mass_compressor({tier = "HV", demand = {6000, 4500, 3000}, speed = 1, upgrade = 1, tube = 1})
--shoving an animation down your throat
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
function technic_many_machines.register_mass_compressor_recipe(data)
    data.time = data.time or 4
    technic.register_recipe("mass_compressing", data)
end
--not wanting to type a lot, also you might not wanna replace you compressor with this, this thing might be too heavy duty for some things
local recipes = {
    { 2, "default:copper_ingot 10", "default:copper_ingot 10", "technic:copper_plate 4"},
    { 2, "default:sand 20", "default:sand 20", "default:sandstone 20"},
    { 2, "default:desert_sand 20", "default:desert_sand 20", "default:desert_sandstone 20"},
    { 2, "default:silver_sand 20", "default:silver_sand 20", "default:silver_sandstone 20"},
    { 2, "technic:mixed_metal_ingot 2", "technic:mixed_metal_ingot 2", "technic:composite_plate 4"},
    { 2, "technic:coal_dust 12", "technic:coal_dust 12", "technic:carbon_plate 8"},
}
for _, recipe in ipairs(recipes) do
    technic_many_machines.register_mass_compressor_recipe({
        time = recipe[1],
        input = {recipe[2], recipe[3]},
        output = recipe[4],
    })
end