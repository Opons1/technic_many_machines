--function for cobble gen
function technic_many_machines.register_cobble_generator(data)
	data.typename = "cobblestone_generating"
	data.machine_name = "cobblestone_generator"
	data.machine_desc = technic.getter("%s Cobblestone Generator")
    technic.register_base_machine(data)
end
--register recipe type 
technic.register_recipe_type("cobblestone_generating", {description = "Cobblestone Generating"})
--register recipe
technic.register_recipe("cobblestone_generating", {
    input = {""},
    output = {"default:cobble"},
    time = 1,
    input_slots = 1
})
--LV cobble gen
technic_many_machines.register_cobble_generator({
    tier = "LV",
    speed = 1,
    demand = {300}
})
--MV cobble gen
technic_many_machines.register_cobble_generator({
    tier = "MV",
    speed = 4,
    demand = {1200}
})
--HV cobble gen
technic_many_machines.register_cobble_generator({
    tier = "HV",
    speed = 16,
    demand = {4800}
})
