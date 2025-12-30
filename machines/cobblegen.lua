--function for cobble gen

--register recipe type 
technic.register_recipe_type("cobblestone_generating", {
    description = "Cobblestone Generating",
    icon = "default_cobble.png",
    input_size = 1,
})
--register recipe
technic.register_recipe("cobblestone_generating", {
    input = {""},
    output = {"default:cobble"},
    time = 1})
technic.register_base_machine("technic_many_machines:lv_cobble_generator", {
    typename = "cobblestone_generating",
    description = "LV Cobblestone Generator",
    tier = "LV", 
    speed = 1,
    demand = {300}
})
core.override_item("technic_many_machines:lv_cobble_generator", {
    tiles = {
        "technic_many_machines_lv_side.png",
        "technic_many_machines_lv_bottom.png",
        "technic_many_machines_lv_side.png",
        "technic_many_machines_lv_side.png",
        "technic_many_machines_lv_side.png",
        "technic_many_machines_lv_cobblestone_generator.png",
        }
})
core.override_item("technic_many_machines:lv_cobble_generator_active", {
    tiles = {
        "technic_many_machines_lv_side.png",
        "technic_many_machines_lv_bottom.png",
        "technic_many_machines_lv_side.png",
        "technic_many_machines_lv_side.png",
        "technic_many_machines_lv_side.png",
         {name = "technic_many_machines_lv_cobblestone_generator_active.png",
        animation = {
            type = "vertical_frames",
            aspect_w = 16,
            aspect_h = 16,
            length = 1, }, },
        }
})
--[[
technic.register_base_machine("technic_many_machines:mv_cobble_generator", {
    typename = "cobblestone_generating",
    description = "MV Cobblestone Generator",
    tier = "MV",
    demand = {900, 750, 600},
    speed = 3,
    tube = 1,
})
technic.register_base_machine("technic_many_machines:hv_cobble_generator", {
    typename = "cobblestone_generating",
    description = "HV Cobblestone Generator",
    tier = "HV",
    demand = {2700, 2250, 1800},
    speed = 9,
    tube = 1,
})
]]