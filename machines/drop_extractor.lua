technic.register_recipe_type("technic_many_machines:drop_extracting", {
    description = "Drop Extracting",
    icon = "technic_many_machines_drop_processor.png",
    input_size = 1,
    output_size = 4,
})

table.insert(core.registered_on_mods_loaded, 1, function()
    local nodes = core.registered_nodes
    for nodename, def in pairs(nodes) do
        local node_def = core.registered_nodes[nodename]
        local drop = node_def and node_def.drop
        local drop_items = {}
        local estimated_time = 1
        if drop then
            if type(drop) == "string" then
                table.insert(drop_items, drop)
            elseif type(drop) == "table" then
                if drop.items then
                    for _, item in ipairs(drop.items) do
                        if item.items then
                            for _, subitem in ipairs(item.items) do
                                table.insert(drop_items, subitem)
                            end
                        else
                            table.insert(drop_items, item.name or "")
                        end
                    end
                elseif drop.name then
                    table.insert(drop_items, drop.name)
                end
            end
        end
        if #drop_items > 1 and #drop_items <= 4 then
            core.log("action", "Registering drop extracting recipe for " .. nodename.." "..#drop_items.. " with drops: " .. table.concat(drop_items, ", "))
            technic.register_recipe("technic_many_machines:drop_extracting", {
                input = {nodename.." "..#drop_items},
                output = table.concat(drop_items, " "),
                time = 1,
            })
        end
    end
end)












