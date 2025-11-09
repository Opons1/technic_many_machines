function technic_many_machines.register_advanced_alloy_furnace(data)
	data.typename = "advanced_alloying"
	data.machine_name = "advancedalloyfurnace"
	data.machine_desc = technic.getter("%s Advanced Alloy Furnace")
    technic.register_base_machine(data)
end
technic.register_recipe_type("advanced_alloying", {description = "Advanced Alloying", input_size = 3})
technic_many_machines.register_advanced_alloy_furnace({tier = "HV", demand = {5000, 4250, 3500}, speed = 1, upgrade = 1, tube = 1})
core.override_item("technic_many_machines:hv_advancedalloyfurnace_active", {
    tiles = {
        "technic_many_machines_hv_advancedalloyfurnace_top.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_advancedalloyfurnace_bottom.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_advancedalloyfurnace_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_advancedalloyfurnace_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_advancedalloyfurnace_side.png^pipeworks_tube_connection_metallic.png",
         {name = "technic_many_machines_hv_advancedalloyfurnace_front_active.png",
        animation = {
            type = "vertical_frames",
            aspect_w = 16,
            aspect_h = 16,
            length = 1, }, },
        },
})
function technic_many_machines.register_advanced_alloy_furnace_recipe(data)
    data.time = data.time or 4
    technic.register_recipe("advanced_alloying", data)
end
--recipes
local recipes = {
}
for _, recipe in ipairs(recipes) do
    technic_many_machines.register_advanced_alloy_furnace_recipe({
        time = recipe[1],
        input = {recipe[2], recipe[3], recipe[4]},
        output = recipe[5],
    })
end