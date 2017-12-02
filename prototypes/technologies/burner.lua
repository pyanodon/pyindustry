local technology = {
    type = "technology",
    name = "py-burner",
    icon = "__pyindustry__/graphics/technology/burner.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"steel-processing"},
    effects = {
		{
            type = "unlock-recipe",
            recipe = "py-burner"
        },
	},
    unit =
    {
        count = 40,
        ingredients = {
            {"science-pack-1", 2},
        },
        time = 45
    },
}
data:extend({technology})
