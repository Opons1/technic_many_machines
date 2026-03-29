technic.register_recipe_type("sawmilling", {
    description = "Sawmilling",
    icon = "technic_many_machines_hv_sawmill_front.png",
    input_size = 1,
    output_size = 4,
})
technic.register_base_machine("technic_many_machines:hv_sawmill", {
    description = "HV Sawmill\n"..core.colorize("#84bac1ff", "Used for doubling plank yield"),
    typename = "sawmilling",
    tier = "HV",
    demand = {3000, 2250, 1500},
    speed  = 1,
    upgrade = 1,
    tube = 1
})
core.override_item("technic_many_machines:hv_sawmill_active", {
    tiles = {
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_bottom.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        {name = "technic_many_machines_hv_sawmill_front_active.png",
        animation = {
            type = "vertical_frames",
            aspect_w = 16,
            aspect_h = 16,
            length = 0.125, }, },
}})
core.override_item("technic_many_machines:hv_sawmill", {
    tiles = {
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_bottom.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_sawmill_front.png",
}})
--I got stuck here and asked ai for help, and all it changed was the core.register_on_mods_loaded with this table.insert? what is this
table.insert(core.registered_on_mods_loaded, 1, function()
    local nodes = core.registered_nodes
    for nodename, def in pairs(nodes) do
        local is_group_tree = core.get_item_group(nodename, "tree") > 0
        if is_group_tree then
            local output = core.get_craft_result({method = "normal", width = 1, items = {nodename}})
            local does_output_exist = output and output.item and not output.item:is_empty()
            if does_output_exist then
                local output_name = output.item:get_name()
                if core.get_item_group(output_name, "wood") > 0 then
                    core.log("action", "Registering sawmill recipe for " .. nodename .. " with output " .. output_name)
                    technic.register_recipe("sawmilling", {
                        input = {nodename},
                        output = output_name .. " 8",
                        time = 1,
                    })
                end
            end
        end
    end
end)
core.register_craft({
    output = "technic_many_machines:hv_sawmill",
    recipe = {
        {"technic:composite_plate", "technic:hv_transformer", "technic:composite_plate"},
        {"technic:diamond_drill_head", "technic:machine_casing", "technic_many_machines:carbon_plate"},
        {"technic:composite_place", "technic:hv_cable", "technic:composite_plate"},
    }
})