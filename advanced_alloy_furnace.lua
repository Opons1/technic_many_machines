function technic_many_machines.register_advanced_alloy_furnace(data)
	data.typename = "advanced_alloying"
	data.machine_name = "advancedalloyfurnace"
	data.machine_desc = technic.getter("%s Advanced Alloy Furnace")
    technic.register_base_machine(data)

end
technic.register_recipe_type("advanced_alloying", {description = "Advanced Alloying", input_size = 3})
technic_many_machines.register_advanced_alloy_furnace({tier = "HV", demand = {8000, 6500, 5000}, speed = 1, upgrade = 1, tube = 1})
core.override_item("technic_many_machines:hv_advancedalloyfurnace_active", {
    tiles = {
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_bottom.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_advancedalloyfurnace_front_active.png",
}})
core.override_item("technic_many_machines:hv_advancedalloyfurnace", {  
    description = "HV Advanced Alloy Furnace\n"..minetest.colorize("#84bac1ff", "Used for different alloying processes\n(not useful yet)"),
    tiles = {
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_bottom.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_advancedalloyfurnace_front.png",
}})
function technic_many_machines.register_advanced_alloy_furnace_recipe(data)
    data.time = data.time or 4
    technic.register_recipe("advanced_alloying", data)
end
--recipes
local recipes = {
{ 8, "technic:coal_dust 2", "default:steel_ingot 4", "technic:chromium_ingot 1", "technic:stainless_steel_ingot 5"},
}
for _, recipe in ipairs(recipes) do
    technic_many_machines.register_advanced_alloy_furnace_recipe({
        time = recipe[1],
        input = {recipe[2], recipe[3], recipe[4]},
        output = recipe[5]})
end