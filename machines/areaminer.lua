local S = core.get_translator("technic_many_machines")
--made with this: https://luk3yx.gitlab.io/minetest-formspec-editor/
local formspec = "formspec_version[6]"
    .. "size[9.85,9]"
    .. "list[context;filter;0.1,3.1;6,1;0]"
    .. "field[7.3,1;0.8,0.5;y1;   y;0]"
    .. "field[8.3,1;0.8,0.5;z1;   z;0]"
    .. "field[6.3,1;0.8,0.5;x1;   x;0]"
    .. "field[6.3,2.4;0.8,0.5;x2;   x;0]"
    .. "field[7.3,2.4;0.8,0.5;y2;   y;0]"
    .. "field[8.3,2.4;0.8,0.5;z2;   z;0]"
    .. "label[6.3,0.5;Pos1]"
    .. "label[6.3,1.9;Pos2]"
    .. "list[current_player;main;0.1,4.2;8,4;0]"
    .. "list[context;main;0.1,0.6;5,2;0]"
    .. "checkbox[7.7,3.5;on;Start;false]"

core.register_node("technic_many_machines:hv_areaminer", {
    description = S("HV Area Miner"),
    paramtype2 = "facedir",
    is_ground_content = false,
    groups = {cracky = 2, oddly_breakable_by_hand = 1, technic_machine = 1, technic_hv = 1},
    
    on_construct = function(pos)
        local meta = core.get_meta(pos)
        local inv = meta:get_inventory()
        inv:set_size("main", 10)
        inv:set_size("filter", 6)
        meta:set_int("HV_EU_demand", 80)
        meta:set_string("formspec", formspec)
    end,
    
    technic_run = function(pos, node)
        local meta = core.get_meta(pos)
        local input = meta:get_int("LV_EU_input")

        if input >= 80 then
            meta:set_string("infotext", S("LV Moving Walkway Active"))
        else
            meta:set_string("infotext", S("LV Moving Walkway Unpowered"))
        end
    end,
})
technic.register_machine("HV", "technic_many_machines:hv_areaminer", technic.receiver)
