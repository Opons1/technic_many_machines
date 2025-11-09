technic.register_alloy_furnace({tier = "HV", speed = 9, upgrade = 1, tube = 1, demand = {18000, 14000, 10000}})
core.override_item("technic_many_machines:hv_alloy_furnace_active", {
    description = "HV Bulk Alloy Furnace",
    tiles = {
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_bottom.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_alloy_furnace_front_active.png",
}})
core.override_item("technic_many_machines:hv_alloy_furnace", {
    description = "HV Bulk Alloy Furnace\n"..minetest.colorize("#84bac1ff", "6 times faster than a MV alloy furnace"),
    tiles = {
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_bottom.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_alloy_furnace_front.png",
}})