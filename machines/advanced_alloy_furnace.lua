technic.register_recipe_type("advanced_alloying", {
    description = "Advanced Alloying",
    icon = "technic_many_machines_hv_advancedalloyfurnace_front.png",
    input_size = 3
})
technic.register_base_machine("technic_many_machines:hv_advancedalloyfurnace", {
    description = "HV Advanced Alloy Furnace\n"..minetest.colorize("#84bac1ff", "Used for different alloying processes\n(not useful yet)"),
    typename = "advanced_alloying",
    tier = "HV",
    demand = {8000, 6500, 5000},
    speed  = 1,
    upgrade = 1,
    tube = 1
})

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
{ 6, "technic:coal_dust 2", "technic:steel_dust 4", "technic:chromium_dust 1", "technic:stainless_steel_ingot 5"},
}
for _, recipe in ipairs(recipes) do
    technic_many_machines.register_advanced_alloy_furnace_recipe({
        time = recipe[1],
        input = {recipe[2], recipe[3], recipe[4]},
        output = recipe[5]})
end