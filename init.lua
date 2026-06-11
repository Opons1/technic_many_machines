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
--i need help, the code in the cryptominer is garbage but idk how to make better
local enable_cryptominer = core.settings:get_bool("technic_many_machines_enable_cryptominer") or false
technic_many_machines.cryptominer_output = core.settings:get("technic_many_machines_cryptominer_output") or ""
--items
dofile(core.get_modpath("technic_many_machines").."/items.lua")
--tools
--dofile(core.get_modpath("technic_many_machines").."/tools.lua")

dofile(core.get_modpath("technic_many_machines").."/machines/mass_compressor.lua")
dofile(core.get_modpath("technic_many_machines").."/machines/advanced_alloy_furnace.lua")
dofile(core.get_modpath("technic_many_machines").."/machines/bulk_alloy_furnace.lua")
dofile(core.get_modpath("technic_many_machines").."/machines/cobblegen.lua")
dofile(core.get_modpath("technic_many_machines").."/machines/movingwalkway.lua")
dofile(core.get_modpath("technic_many_machines").."/machines/sawmill.lua")
dofile(core.get_modpath("technic_many_machines").."/recipes.lua")
--fun unoptmized fun
if enable_cryptominer then
dofile(core.get_modpath("technic_many_machines").."/machines/cryptominer.lua")
end
dofile(core.get_modpath("technic_many_machines").."/machines/drop_extractor.lua")
dofile(core.get_modpath("technic_many_machines").."/machines/asteroidteleporter.lua")
dofile(core.get_modpath("technic_many_machines").."/machines/radiation_chamber.lua")
dofile(core.get_modpath("technic_many_machines").."/machines/crusher.lua")

--tutorials
local guides = {
    { 
        id = "hv_advanced_alloy_furnace", 
        title = "HV Advanced Alloy Furnace", 
        image = "technic_many_machines_hv_advancedalloyfurnace_front.png", 
        desc = "An Alloy Furnace you will need to use in the future. Made to do 3 input alloying recipes, the most prevalent of which being the recipe to make radiant alloy." 
    },
}

local function get_main_formspec()
    local fs = "formspec_version[4]" ..
               "size[13,9.5]" ..
               "label[0.5,0.4;Extra Technic Machines]" ..
               "scroll_container[0.5,0.8;11.2,8.2;menu_scroll;vertical;0.1]"
    
    for i, guide in ipairs(guides) do
        local y = (i - 1) * 4
        fs = fs .. "image_button[0," .. y .. ";4,4;" .. guide.image .. ";click_" .. guide.id .. ";]" ..
                   "label[4.5," .. (y + 1.5) .. ";" .. core.formspec_escape(guide.title) .. "]"
    end
    
    fs = fs .. "scroll_container_end[]"
    
    local total_height = #guides * 4
    local scroll_max = math.max(0, (total_height - 8.2) * 10)
    
    fs = fs .. "scrollbaroptions[max=" .. scroll_max .. ";thumbsize=10]" ..
               "scrollbar[12,0.8;0.4,8.2;vertical;menu_scroll;0]"
    return fs
end

local function get_guide_formspec(guide)
    return "formspec_version[4]" ..
           "size[13,9.5]" ..
           "label[0.5,0.5;" .. core.formspec_escape(guide.title) .. "]" ..
           "image[0.5,1.2;5,5;" .. guide.image .. "]" ..
           "textarea[6,1.2;6.5,7;;;" .. core.formspec_escape(guide.desc) .. "]" ..
           "button[0.5,8.5;3,0.8;back_to_menu;Back]"
end

core.register_on_player_receive_fields(function(player, formname, fields)
    if formname ~= "technic_many_machines:tutorial" then return false end
    local player_name = player:get_player_name()

    if fields.back_to_menu then
        core.show_formspec(player_name, "technic_many_machines:tutorial", get_main_formspec())
        return true
    end
    for _, guide in ipairs(guides) do
        if fields["click_" .. guide.id] then
            core.show_formspec(player_name, "technic_many_machines:tutorial", get_guide_formspec(guide))
            return true
        end
    end
end)

core.register_chatcommand("technic_guide", {
    description = "Opens the Extra Technic Machines tutorial page",
    privs = {interact = true},
    func = function(name, param)
        core.show_formspec(name, "technic_many_machines:tutorial", get_main_formspec())
        return true
    end,
})

