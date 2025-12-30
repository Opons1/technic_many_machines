--compressor, but faster and has two slots now for annoying people
-- for whatever reason you want to make your own mass compressor

technic.register_recipe_type("bulk_compressing", {
    description = "Bulk Compressing",
    icon = "technic_many_machines_hv_masscompressor_front.png",
    input_size = 2
})

technic.register_base_machine("technic_many_machines:hv_masscompressor", {
    description = "HV Mass Compressor\n"..minetest.colorize("#84bac1ff", "Compresses items in bulk with new recipes"),
    typename = "bulk_compressing",
    tier = "HV",
    demand = {6000, 4500, 3000},
    speed = 1,
    upgrade = 1,
    tube = 1
})

core.override_item("technic_many_machines:hv_masscompressor_active", {
    tiles = {
        "technic_many_machines_hv_masscompressor_top.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_masscompressor_bottom.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_masscompressor_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_masscompressor_side.png^pipeworks_tube_connection_metallic.png",
        "technic_many_machines_hv_masscompressor_side.png^pipeworks_tube_connection_metallic.png",
         {name = "technic_many_machines_hv_masscompressor_front_active.png",
        animation = {
            type = "vertical_frames",
            aspect_w = 16,
            aspect_h = 16,
            length = 1, }, },
        }})

function technic_many_machines.register_bulk_compressor_recipe(data)
    data.time = data.time or 4
    technic.register_recipe("bulk_compressing", data)
end

--not wanting to type a lot, also you might not wanna replace you compressor with this, this thing might be too heavy duty for some things
local recipes = {
    { 2, "default:copper_ingot 10", "default:copper_ingot 10", "technic:copper_plate 4"},
    { 2, "default:sand 20", "default:sand 20", "default:sandstone 20"},
    { 2, "default:desert_sand 20", "default:desert_sand 20", "default:desert_sandstone 20"},
    { 2, "default:silver_sand 20", "default:silver_sand 20", "default:silver_sandstone 20"},
    { 2, "technic:mixed_metal_ingot 2", "technic:mixed_metal_ingot 2", "technic:composite_plate 4"},
    { 2, "technic:coal_dust 24", "technic:coal_dust 24", "technic:carbon_plate 4"},
	{ 10,"default:coal_lump 25", "default:coal_lump 25", "default:diamond"},
}
for _, recipe in ipairs(recipes) do
    technic_many_machines.register_bulk_compressor_recipe({
        time = recipe[1],
        input = {recipe[2], recipe[3]},
        output = recipe[4]})
end

