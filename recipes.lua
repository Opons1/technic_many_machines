--recipes for machines
core.register_craft({
    output = "technic_many_machines:compressor_piston",
    recipe = {
        {"technic:cast_iron_ingot", "basic_materials:carbon_steel_bar", "technic:cast_iron_ingot"},
        {"technic:cast_iron_ingot", "basic_materials:carbon_steel_bar", "technic:cast_iron_ingot"},
        {"technic:carbon_plate", "technic:carbon_plate", "technic:carbon_plate"},
}})
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
--recipes for nuggets
local nugget_recipes = {
    {"default:brass_ingot", "technic_many_machines:brass_nugget 9"},
    {"default:bronze_ingot", "technic_many_machines:bronze_nugget 9"},
    {"technic:carbon_steel_ingot", "technic_many_machines:carbon_steel_nugget 9"},
    {"technic:cast_iron_ingot", "technic_many_machines:cast_iron_nugget 9"},
    {"technic:chromium_ingot", "technic_many_machines:chromium_nugget 9"},
    {"default:copper_ingot", "technic_many_machines:copper_nugget 9"},
    {"default:gold_ingot", "technic_many_machines:gold_nugget 9"},
    {"moreores:lead_ingot", "technic_many_machines:lead_nugget 9"},
    {"moreores:mithril_ingot", "technic_many_machines:mithril_nugget 9"},
    {"moreores:silver_ingot", "technic_many_machines:silver_nugget 9"},
    {"technic:stainless_steel_ingot", "technic_many_machines:stainless_steel_nugget 9"},
    {"moreores:tin_ingot", "technic_many_machines:tin_nugget 9"},
    {"technic:wrought_iron_ingot", "technic_many_machines:wrought_iron_nugget 9"},
    {"moreores:zinc_ingot", "technic_many_machines:zinc_nugget 9"},
}
for _, data in ipairs(nugget_recipes) do
    core.register_craft({
        output = data[2],
        recipe = {{data[1]},
        }})
end
--cooking recipes
local cooking_recipes = {
    {1, "technic_many_machines:brass_dust_small", "technic_many_machines:brass_nugget"},
    {1, "technic_many_machines:bronze_dust_small", "technic_many_machines:bronze_nugget"},
    {1, "technic_many_machines:carbon_steel_dust_small", "technic_many_machines:carbon_steel_nugget"},
    {1, "technic_many_machines:cast_iron_dust_small", "technic_many_machines:cast_iron_nugget"},
    {1, "technic_many_machines:chromium_dust_small", "technic_many_machines:chromium_nugget"},
    {1, "technic_many_machines:copper_dust_small", "technic_many_machines:copper_nugget"},
    {1, "technic_many_machines:gold_dust_small", "technic_many_machines:gold_nugget"},
    {1, "technic_many_machines:lead_dust_small", "technic_many_machines:lead_nugget"},
    {1, "technic_many_machines:mithril_dust_small", "technic_many_machines:mithril_nugget"},
    {1, "technic_many_machines:silver_dust_small", "technic_many_machines:silver_nugget"},
    {1, "technic_many_machines:stainless_steel_dust_small", "technic_many_machines:stainless_steel_nugget"},
    {1, "technic_many_machines:tin_dust_small", "technic_many_machines:tin_nugget"},
    {1, "technic_many_machines:wrought_iron_dust_small", "technic_many_machines:wrought_iron_nugget"},
    {1, "technic_many_machines:zinc_dust_small", "technic_many_machines:zinc_nugget"},
}
for _, data in ipairs(cooking_recipes) do
    core.register_craft({
        type = "cooking",
        cooktime = data[1],
        recipe = data[2],
        output = data[3],
    })
end
--grinder recipes
local grinder_recipes = {
    {0.5, "technic_many_machines:brass_nugget", "technic_many_machines:brass_dust_small"},
    {0.5, "technic_many_machines:bronze_nugget", "technic_many_machines:bronze_dust_small"},
    {0.5, "technic_many_machines:carbon_steel_nugget", "technic_many_machines:carbon_steel_dust_small"},
    {0.5, "technic_many_machines:cast_iron_nugget", "technic_many_machines:cast_iron_dust_small"},
    {0.5, "technic_many_machines:chromium_nugget", "technic_many_machines:chromium_dust_small"},
    {0.5, "technic_many_machines:copper_nugget", "technic_many_machines:copper_dust_small"},
    {0.5, "technic_many_machines:gold_nugget", "technic_many_machines:gold_dust_small"},
    {0.5, "technic_many_machines:lead_nugget", "technic_many_machines:lead_dust_small"},
    {0.5, "technic_many_machines:mithril_nugget", "technic_many_machines:mithril_dust_small"},
    {0.5, "technic_many_machines:silver_nugget", "technic_many_machines:silver_dust_small"},
    {0.5, "technic_many_machines:stainless_steel_nugget", "technic_many_machines:stainless_steel_dust_small"},
    {0.5, "technic_many_machines:tin_nugget", "technic_many_machines:tin_dust_small"},
    {0.5, "technic_many_machines:wrought_iron_nugget", "technic_many_machines:wrought_iron_dust_small"},
    {0.5, "technic_many_machines:zinc_nugget", "technic_many_machines:zinc_dust_small"},
}   

for _, data in ipairs(grinder_recipes) do
    technic.register_grinder_recipe({
        time = data[1],
        --somebody please tell me why i need to make input a table
        input = {data[2]},
        output = data[3],
    })
end
