--recipes for machines
core.register_craft({
    output = "technic_many_machines:hv_masscompressor",
    recipe = {
        {"technic:composite_plate", "technic_many_machines:compressor_piston", "technic:composite_plate"},
        {"technic:hv_cable", "technic:hv_transformer", "default:tinblock"},
        {"technic:carbon_plate", "technic:mv_compressor", "technic:carbon_plate"},
}})
core.register_craft({
    output = "technic_many_machines:hv_alloy_furnace",
    recipe = {
        {"technic:mv_alloy_furnace", "technic:mv_alloy_furnace", "technic:mv_alloy_furnace"},
        {"technic:mv_alloy_furnace", "technic:mv_alloy_furnace", "technic:mv_alloy_furnace"},
        {"technic:composite_plate", "technic:hv_transformer", "technic:composite_plate"},
}})
core.register_craft({
    output = "technic_many_machines:hv_advancedalloyfurnace",
    recipe = {
        {"technic:composite_plate", "technic:mv_alloy_furnace", "technic:composite_plate"},
        {"technic:red_energy_crystal", "technic:hv_transformer", "technic:hv_cable"},
        {"technic:composite_plate", "technic:carbon_plate", "technic:composite_plate"},
}})
core.register_craft({
    output = "technic_many_machines:hv_sawmill",
    recipe = {
        {"technic:composite_plate", "technic:hv_transformer", "technic:composite_plate"},
        {"technic:diamond_drill_head", "technic:machine_casing", "technic_many_machines:carbon_plate"},
        {"technic:composite_place", "technic:hv_cable", "technic:composite_plate"},
    }
})
core.register_craft({
    output = "technic_many_machines:lv_moving_walkway",
    recipe = {
        {"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
        {"basic_materials:gear_steel", "technic:machine_casing", "basic_materials:gear_steel"},
        {"basic_materials:motor", "technic:lv_cable", "basic_materials:motor"},
    }
})
core.register_craft({
    output = "technic_many_machines:lv_drop_extractor",
    recipe = {
        {"default:steel_ingot", "technic:lv_cable", "default:steel_ingot"},
        {"default:pick_steel", "technic:machine_casing", "basic_materials:gear_steel"},
        {"default:steel_ingot", "technic:lv_cable", "default:steel_ingot"},
    }
})
core.register_craft({
    output = "technic_many_machines:mv_drop_extractor",
    recipe = {
        {"technic:stainless_steel_ingot", "technic:mv_cable", "technic:stainless_steel_ingot"},
        {"default:pick_mese", "technic_many_machines:lv_drop_extractor", "basic_materials:gear_steel"},
        {"technic:stainless_steel_ingot", "technic:mv_cable", "technic:stainless_steel_ingot"},
    }
})
core.register_craft({
    output = "technic_many_machines:hv_drop_extractor",
    recipe = {
        {"technic:composite_plate", "technic:hv_cable", "technic:composite_plate"},
        {"default:pick_diamond", "technic_many_machines:mv_drop_extractor", "basic_materials:gear_steel"},
        {"technic:composite_plate", "technic:hv_cable", "technic:composite_plate"},
    }
})
core.register_craft({
    output = "technic_many_machines:lv_cobble_generator",
    recipe = {
        {"basic_materials:gear_steel", "technic:lv_transformer", "basic_materials:gear_steel"},
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
core.register_craft({
    output = "technic_many_machines:mv_cobble_generator",
    recipe = {
        {"technic:stainless_steel_ingot", "technic:mv_transformer", "technic:stainless_steel_ingot"},
        {"technic_many_machines:lv_cobble_generator", "technic:machine_casing", "technic_many_machines:lv_cobble_generator"},
        {"technic:stainless_steel_ingot", "technic:mv_cable", "technic:stainless_steel_ingot"},
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
--asteroidteleporter.lua
core.register_craft({
    output = "technic_many_machines:hv_asteroid_teleporter",
    recipe = {
        {"technic_many_machines:thorium_block", "technic_many_machines:radiant_alloy_plate", "default:mese"},
        {"technic:composite_plate", "technic_many_machines:hv_mb_casing", "technic:composite_plate"},
        {"technic:control_logic_unit", "technic:hv_transformer", "technic:hv_cable"},
    }
})
--radiation_chamber.lua
core.register_craft({
    output = "technic_many_machines:hv_radiation_chamber",
    recipe = {
        {"technic:composite_plate", "technic:hv_transformer", "technic:composite_plate"},
        {"technic_many_machines:radiant_alloy_plate", "technic:machine_casing", "technic_many_machines:radiant_alloy_plate"},
        {"technic:uranium35_block", "technic:hv_cable", "technic:uranium35_block"},
    }
})
--sawmill.lua
core.register_craft({
    output = "technic_many_machines:hv_sawmill",
    recipe = {
        {"technic:composite_plate", "technic:hv_transformer", "technic:composite_plate"},
        {"technic:diamond_drill_head", "technic:machine_casing", "technic:diamond_drill_head"},
        {"technic:composite_plate", "technic:hv_cable", "technic:composite_plate"},
    }
})
--forge.lua
core.register_craft({
    output = "technic_many_machines:hv_forge_controller",
    recipe = {
        {"technic_many_machines:forge_plate", "technic_many_machines:lcd", "technic_many_machines:forge_plate"},
        {"technic_many_machines:radiant_alloy_circuit", "technic_many_machines:hv_forge_wall", "technic_many_machines:forge_plate"},
        {"technic_many_machines:forge_plate", "technic:hv_cable", "technic_many_machines:forge_plate"},
    }
})

core.register_craft({
    output = "technic_many_machines:hv_forge_wall", 
    recipe = {
        {"default:obsidian", "technic:carbon_plate", "default:obsidian"},
        {"technic:carbon_plate", "technic_many_machines:forge_block", "technic:carbon_plate"},
        {"technic:lead_plate", "technic:carbon_plate", "technic:lead_plate"},
    }
})

core.register_craft({
    output = "technic_many_machines:hv_forge_power", 
    type = "shapeless",
    recipe = {"technic:hv_cable", "technic_many_machines:forge_wall"}
})

core.register_craft({
    output = "technic_many_machines:hv_forge_glass 4", 
    recipe = {
        {"technic_many_machines:forge_ingot", "technic_many_machines:hv_forge_wall", "technic_many_machines:forge_ingot"},
        {"technic_many_machines:hv_forge_wall", "default:glass", "technic_many_machines:hv_forge_wall"},
        {"technic_many_machines:forge_ingot", "technic_many_machines:hv_forge_wall", "technic_many_machines:forge_ingot"},
    }
})

core.register_craft({
    output = "technic_many_machines:hv_forge_glass_2 4", 
    recipe = {
        {"technic_many_machines:forge_ingot", "technic_many_machines:hv_forge_wall", "technic_many_machines:forge_ingot"},
        {"technic_many_machines:hv_forge_wall", "default:obsidian_glass", "technic_many_machines:hv_forge_wall"},
        {"technic_many_machines:forge_ingot", "technic_many_machines:hv_forge_wall", "technic_many_machines:forge_ingot"},
    }
})

--machine parts
core.register_craft({
    output = "technic_many_machines:compressor_piston",
    recipe = {
        {"technic:cast_iron_ingot", "basic_materials:carbon_steel_bar", "technic:cast_iron_ingot"},
        {"technic:cast_iron_ingot", "basic_materials:carbon_steel_bar", "technic:cast_iron_ingot"},
        {"technic:carbon_plate", "technic:carbon_plate", "technic:carbon_plate"},
}})

core.register_craft({
    output = "technic_many_machines:color_filter 1",
    recipe = {
        {"", "xpanes:pane_flat", ""},
        {"dye:red", "dye:green", "dye:blue"},
        {"", "xpanes:pane_flat", ""}
    }
})

core.register_craft({
    output = "technic_many_machines:lcd",
    recipe = {
        {"xpanes:pane_flat", "technic_many_machines:color_filter"},
        {"technic:lv_led", "technic:doped_silicon_wafer"},
    }
})

core.register_craft({
    output = "technic_many_machines:radiant_alloy_circuit",
    recipe = {
        {"basic_materials:gold_wire", "basic_materials:copper_strip", "basic_materials:gold_wire"},
        {"basic_materials:ic", "technic_many_machines:radiant_alloy_plate", "basic_materials:ic"},
        {"technic:control_logic_unit", "basic_materials:plastic_strip", "technic:control_logic_unit"},
    },
    replacements = {
        {"basic_materials:gold_wire", "basic_materials:empty_spool"}
    }
})


--raw materials
if core.get_modpath("underch") then
    technic.register_grinder_recipe({
        time = 8,
        output = {"technic:copper_dust"},
        input = {"technic_many_machines:crushed_malachite"} 
    })
end
if core.get_modpath("too_many_stones") then
    technic.register_grinder_recipe({
        time = 8,
        output = {"technic:lead_dust"},
        input = {"technic_many_machines:crushed_galena"} 
    })
end
--simple materials

--machine processing recipes
local recipes
--compressor recipes
technic.register_compressor_recipe({
    time = 4,
    input = {"technic:lead_ingot 5"},
    output = {"technic:lead_plate"}
})
--alloy furnace recipes
recipes = {
    {"default:steel_ingot 5", "dye:red", "technic_many_machines:blocker", 8}
}
for _, recipe in pairs(recipes) do
	technic.register_alloy_recipe({
        input = {recipe[1], recipe[2]},
        output = recipe[3],
        time = recipe[4]
    })
end
--advanced alloy furnace recipes
recipes = {
    { 8, "technic:coal_dust 2", "default:steel_ingot 4", "technic:chromium_ingot 1", "technic:stainless_steel_ingot 5"},
    { 6, "technic:coal_dust 2", "technic:steel_dust 4", "technic:chromium_dust 1", "technic:stainless_steel_ingot 5"},
    { 8, "technic:uranium0_ingot", "technic:stainless_steel_ingot 3", "default:mese_crystal_fragment", "technic_many_machines:radiant_alloy_ingot 4"},
    { 4, "technic_many_machines:radiant_alloy_dust", "default:mese_crystal_fragment", "technic_many_machines:hv_mb_casing", "technic_many_machines:hv_mb_airlock"},
    { 6, "technic:graphite 5", "moreores:mithril_ingot 2", "technic:lead_ingot 6", "technic_many_machines:forge_ingot 2"},
    { 6, "technic:graphite 5", "technic:mithril_dust 2", "technic:lead_dust 6", "technic_many_machines:forge_ingot 2"},
    { 4, "technic:uranium0_dust", "technic:stainless_steel_dust 3", "default:mese_crystal_fragment", "technic_many_machines:radiant_alloy_ingot 4"},
}

for _, recipe in ipairs(recipes) do
    technic_many_machines.register_advanced_alloy_furnace_recipe({
        time = recipe[1],
        input = {recipe[2], recipe[3], recipe[4]},
        output = recipe[5]})
end
--mass compressor recipes
--not wanting to type a lot, also you might not wanna replace you compressor with this, this thing might be too heavy duty for some things
recipes = {
    { 2, "default:copper_ingot 10", "default:copper_ingot 10", "technic:copper_plate 4"},
    { 2, "default:sand 20", "default:sand 20", "default:sandstone 20"},
    { 2, "default:desert_sand 20", "default:desert_sand 20", "default:desert_sandstone 20"},
    { 2, "default:silver_sand 20", "default:silver_sand 20", "default:silver_sandstone 20"},
    { 2, "technic:mixed_metal_ingot 2", "technic:mixed_metal_ingot 2", "technic:composite_plate 4"},
    { 2, "technic:coal_dust 24", "technic:coal_dust 24", "technic:carbon_plate 4"},
	{ 10,"default:coal_lump 25", "default:coal_lump 25", "default:diamond"},
    { 4, "technic_many_machines:radiant_alloy_ingot 10", "technic_many_machines:radiant_alloy_ingot 10", "technic_many_machines:radiant_alloy_plate 4"},
    { 2, "technic_many_machines:radiant_alloy_plate", "technic:blast_resistant_concrete 2", "technic_many_machines:hv_mb_casing"},
    { 2, "technic_many_machines:hv_mb_casing", "default:obsidian_glass 4", "technic_many_machines:hv_mb_glass"},
    { 40, "technic_many_machines:forge_plate 10", "technic:lead_plate 10", "technic_many_machines:forge_catalyst"}
}
for _, recipe in ipairs(recipes) do
    technic_many_machines.register_bulk_compressor_recipe({
        time = recipe[1],
        input = {recipe[2], recipe[3]},
        output = recipe[4]})
end
--THE FORGE
recipes = {
    {10, "technic_many_machines:hydro_mv_generator_mk2", 30000, "technic:hydro_turbine 4", "technic_many_machines:forge_plate", "technic_many_machines:forge_ingot", "technic:carbon_plate 2"},
}
for _, recipe in ipairs(recipes) do
    local itemsneeded = {}
    for index, item in ipairs(recipe) do
        if index > 3 then
            table.insert(itemsneeded, item)
        end
    end
    technic_many_machines.register_forge_recipe({
        time = recipe[1],
        output = recipe[2],
        powerdraw = recipe[3],
        input = itemsneeded,
    })
end

--others
if core.get_modpath("darkage") then
    technic.register_compressor_recipe({
        time = 2,
        input = {"darkage:chalk_powder 4"},
        output = {"darkage:chalk"}
    })
    technic_many_machines.register_bulk_compressor_recipe({
        time = 2,
        input = {"darkage:chalk_powder 40", "darkage:chalk_powder 40"},
        output = {"darkage:chalk 20"}
    })
end