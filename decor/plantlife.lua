core.register_node("technic_many_machines:strange_dirt_with_grass", {
	description = "Strange Dirt With Grass",
	tiles = {"technic_many_machines_strange_grass_top.png", "default_dirt.png",
		{name = "default_dirt.png^technic_many_machines_strange_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, irradiated = 1},
	drop = "default:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

core.register_node("technic_many_machines:strange_tree", {
	description = "Strange Tree",
	tiles = {"technic_many_machines_strange_tree_top.png", "technic_many_machines_strange_tree_top.png", "technic_many_machines_strange_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	on_place = core.rotate_node
})

core.register_node("technic_many_machines:strange_leaves", {
	description = "Strange Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
    tiles = {
        {
            image = "technic_many_machines_strange_leaves.png",
            animation = {
                type = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length = 15,
            },
        },
    },
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})