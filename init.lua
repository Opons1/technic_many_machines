technic.register_recipe_type("stone_fabricator", {description = "Stone Fabricating"})

minetest.register_node("technic_many_machines:stone_fabricator", {
    description = "MV Stone Fabricator",
    tiles = {"default_steel_block.png"},
    groups = {cracky = 1, technic_machine = 1, technic_mv = 1},
    sounds = default.node_sound_metal_defaults(),
})
technic.register_base_machine("technic_many_machines:stone_fabricator", {
    tier = "MV",
    typename = "stone_fabricator",
    description = "MV Stone Fabricator",
    demand = {2000, 1500, 1000},
    speed = 1,
    upgrade = 1,
    tube = 1,
})
-- Register recipe
technic.register_recipe("stone_fabricator", {
    input = {
        "default:coal_lump",
        "default:gold_ingot",
        "default:coalblock",
    },
    output = "default:diamond",
    time = 5,
})
