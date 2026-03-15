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
--LV cobble gen
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
            length = 1, }, 
        },
    }
})
core.register_craft({
    output = "technic_many_machines:lv_cobble_generator",
    recipe = {
        {"technic_many_machines:wrought_iron_gear", "technic:lv_transformer", "technic_many_machines:wrought_iron_gear"},
        {"bucket:bucket_water", "technic:machine_casing", "bucket:bucket_lava"},
        {"technic:cast_iron_ingot", "technic:lv_cable", "technic:cast_iron_ingot"},
    },
    replacements = {
        {"bucket:bucket_water", "bucket:bucket_empty"},
        {"bucket:bucket_lava", "bucket:bucket_empty"},
    }
})
core.register_craft({
    output = "technic_many_machines:lv_cobble_generator",
    recipe = {
        {"basic_materials:gear_steel", "technic:lv_transformer", "basic_materials:gear_steel"},
        {"default:ice", "technic:machine_casing", "bucket:bucket_lava"},
        {"technic:cast_iron_ingot", "technic:lv_cable", "technic:cast_iron_ingot"},
    },
    replacements = {
        {"bucket:bucket_lava", "bucket:bucket_empty"},
    }
})
--MV cobble gen
technic.register_base_machine("technic_many_machines:mv_cobble_generator", {
    typename = "cobblestone_generating",
    description = "MV Cobblestone Generator",
    tier = "MV", 
    speed = 3,
    demand = {900, 750, 600},
    tube = 1,
})
core.override_item("technic_many_machines:mv_cobble_generator", {
    tiles = {
        "technic_many_machines_mv_side.png",
        "technic_many_machines_mv_side.png",
        "technic_many_machines_mv_side.png", 
        "technic_many_machines_mv_side.png",
        "technic_many_machines_mv_side.png",
        "technic_many_machines_mv_cobblestone_generator.png",
        }
})
core.override_item("technic_many_machines:mv_cobble_generator_active", {
    tiles = {
        "technic_many_machines_mv_side.png",
        "technic_many_machines_mv_side.png",
        "technic_many_machines_mv_side.png", 
        "technic_many_machines_mv_side.png",
        "technic_many_machines_mv_side.png",
         {name = "technic_many_machines_mv_cobblestone_generator_active.png",
        animation = {
            type = "vertical_frames",
            aspect_w = 16,
            aspect_h = 16,
            length = 1, }, 
        },
    }
})
core.register_craft({
    output = "technic_many_machines:mv_cobble_generator",
    recipe = {
        {"technic:stainless_steel_ingot", "technic:mv_transformer", "technic:stainless_steel_ingot"},
        {"technic_many_machines:lv_cobble_generator", "technic:machine_casing", "technic_many_machines:lv_cobble_generator"},
        {"technic:stainless_steel_ingot", "technic:mv_cable", "technic:stainless_steel_ingot"},
    }
})
--HV cobble gen
technic.register_base_machine("technic_many_machines:hv_cobble_generator", {
    typename = "cobblestone_generating",
    description = "HV Cobblestone Generator",
    tier = "HV", 
    speed = 9,
    demand = {2700, 2250, 1800},
    tube = 1,
})
core.override_item("technic_many_machines:hv_cobble_generator", {
    tiles = {
        "technic_many_machines_hv_side.png",
        "technic_many_machines_hv_bottom.png",
        "technic_many_machines_hv_side.png", 
        "technic_many_machines_hv_side.png",
        "technic_many_machines_hv_side.png",
        "technic_many_machines_hv_cobblestone_generator.png",
        }
})
core.override_item("technic_many_machines:hv_cobble_generator_active", {
    tiles = {
        "technic_many_machines_hv_side.png",
        "technic_many_machines_hv_bottom.png",
        "technic_many_machines_hv_side.png", 
        "technic_many_machines_hv_side.png",
        "technic_many_machines_hv_side.png",
         {name = "technic_many_machines_hv_cobblestone_generator_active.png",
        animation = {
            type = "vertical_frames",
            aspect_w = 16,
            aspect_h = 16,
            length = 1, }, 
        },
    }
})
core.register_craft({
    output = "technic_many_machines:hv_cobble_generator",
    recipe = {
        {"technic:composite_plate", "technic:hv_transformer", "technic:composite_plate"},
        {"technic_many_machines:mv_cobble_generator", "technic:machine_casing", "technic_many_machines:mv_cobble_generator"},
        {"technic:composite_plate", "technic:hv_cable", "technic:composite_plate"},
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