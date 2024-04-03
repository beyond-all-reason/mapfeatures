

 -- its a table of index: s3oname
local anemones = {
"anemone1",
"anemone2",
"anemone3",
"anemone4",
"anemone5",
"anemone6",
}
local base = {
	footprintx = 2,
	footprintz = 2,
	blocking = true,
	upright = false,
	energy = 1000,
	reclaimtime = 10000,
	metal = 0,
	hitdensity = 0,
	maxdamage = 500,
	flammable = false,
	autoreclaimable = true,
	reclaimable = true,
	category = "Vegetation",
	crushresistance = 100,
	mass = 200,
}

for i,name in ipairs(anemones) do
	anemones[name] = {}
	for k, v in pairs(base) do
		anemones[name][k] = v
	end

	anemones[name].description = "Giant Anemone"
	anemones[name].name = "Giant Anemone"
	anemones[name].object = name .. ".s3o"
	anemones[name].customparams = {
		model_author = "Nikuksis",
		normalmaps = "yes",
		normaltex = "unittextures/anemone1_Normal.tga",
		treeshader = "yes",
		randomrotate = "true",
		category = "Plants",
		set = "Sea Featureset",
	}
	if i == 4 then
		anemones[name].energy = 750
		anemones[name].reclaimtime = 7500
	end
	if i == 5 then
		anemones[name].footprintx = 1
		anemones[name].footprintz = 1
		anemones[name].crushresistance = 50
		anemones[name].maxdamage = 350
		anemones[name].energy = 500
		anemones[name].reclaimtime = 5000
	end
	if i == 6 then
		anemones[name].footprintx = 1
		anemones[name].footprintz = 1
		anemones[name].crushresistance = 25
		anemones[name].maxdamage = 250
		anemones[name].energy = 250
		anemones[name].reclaimtime = 2500
	end
end
return anemones
