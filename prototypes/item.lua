--item.lua

local carRemote = table.deepcopy(data.raw.capsule["discharge-defense-remote"])

carRemote.name = "car-remote"
carRemote.icons= {
	{
		icon=carRemote.icon,
		tint={r=1,g=1,b=1,a=0.3}
	},
}


local recipe = table.deepcopy(data.raw.recipe["discharge-defense-remote"])
recipe.enabled = true
recipe.name = "car-remote"
recipe.ingredients = {{"electronic-circuit", 50},{"advanced-circuit", 20}}
recipe.result = "car-remote"

data:extend{carRemote,recipe}