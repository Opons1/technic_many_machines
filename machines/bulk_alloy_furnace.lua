
local S = core.get_translator("technic_many_machines")

technic.register_base_machine("technic_many_machines:hv_alloy_furnace", {
    typename = "alloy",
    description = S("HV Bulk Alloy Furnace").."\n"..core.colorize("#84bac1ff", S("6 times faster than a MV alloy furnace")),
    tier = "HV",
    demand = {18000, 14000, 10000},
    speed = 9,
    tube = 1,
    upgrade = 1
})
core.override_item("technic_many_machines:hv_alloy_furnace_active", {
    description = S("HV Bulk Alloy Furnace (Active)"),
    tiles = {
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_bottom.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_alloy_furnace_front_active.png",
}})
core.override_item("technic_many_machines:hv_alloy_furnace", {
    tiles = {
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_bottom.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_alloy_furnace_front.png",
}})