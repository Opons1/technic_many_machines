technic_many_machines = {}
-- new tier because why not
--[[technic.register_tier("EV", "Extreme Voltage")
technic.register_cable("technic_many_machines:ev_cable", {
	tier = "EV",
	size = 2/16,
	description = core.colorize("#ff0000ff", "EV Cable"),
    tiles = {"technic_many_machines_hv_bottom.png"}
})
]]
dofile(core.get_modpath("technic_many_machines").."/craftitems.lua")
dofile(core.get_modpath("technic_many_machines").."/recipes.lua")
dofile(core.get_modpath("technic_many_machines").."/machines/mass_compressor.lua")
dofile(core.get_modpath("technic_many_machines").."/machines/advanced_alloy_furnace.lua")
dofile(core.get_modpath("technic_many_machines").."/machines/bulk_alloy_furnace.lua")
dofile(core.get_modpath("technic_many_machines").."/nodes.lua")
dofile(core.get_modpath("technic_many_machines").."/machines/cobblegen.lua")
dofile(core.get_modpath("technic_many_machines").."/machines/movingwalkway.lua")