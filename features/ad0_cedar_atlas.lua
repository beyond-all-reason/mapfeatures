

 -- its a table of index: s3oname
local ad0features = {
"cedar_atlas_1__cedar_atlas_1",
"cedar_atlas_1__cedar_atlas_2",
"cedar_atlas_1__cedar_atlas_dead",
"cedar_atlas_2__cedar_atlas_1",
"cedar_atlas_2__cedar_atlas_2",
"cedar_atlas_2__cedar_atlas_dead",
"cedar_atlas_3__cedar_atlas_1",
"cedar_atlas_3__cedar_atlas_2",
"cedar_atlas_3__cedar_atlas_dead",
"cedar_atlas_sapling_1__cedar_atlas_2",
"cedar_atlas_young_1__cedar_atlas_1",
"cedar_atlas_young_1__cedar_atlas_2",
"cedar_atlas_young_2__cedar_atlas_1",
"cedar_atlas_young_2__cedar_atlas_2",
"cedar_atlas_young_3__cedar_atlas_1",
"cedar_atlas_young_3__cedar_atlas_2",
"fir_sapling_1__cedar_atlas_2",
"fir_sapling_2__cedar_atlas_2",
}
local base = {
	footprintx = 1,
	footprintz = 1,
	blocking = true,
	upright = true,
	energy = 200,
	metal = 0,
	hitdensity = 0,
	damage = 2000,
	flammable = true,
	autoreclaimable = true,
	reclaimable = true,
	category = "Vegetation",
	mass = 1000,
	collisionvolumetype = "box",
	collisionvolumescales = "10 64 10",
	collisionvolumeoffsets = "0 16 0",
}

for i,name in ipairs(ad0features) do
	ad0features[name] = {}
	for k, v in pairs(base) do
		ad0features[name][k] = v
	end

	ad0features[name].description = name
	ad0features[name].name = name
	ad0features[name].object = "ad0_cedar_atlas/" .. name .. ".s3o"
	ad0features[name].customparams = {
		model_author = "Beherith, 0 A.D.",
		normalmaps = "yes",
		normaltex = "unittextures/".. "ad0_cedar_atlas" .. "_normal.tga",
		treeshader = "yes",
		randomrotate = "true",
		category = "Plants",
		set = "0AD features",
	}

end
return ad0features
		