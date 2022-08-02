

 -- its a table of index: s3oname
local ad0features = {
"ad0_banyan_1",
"ad0_banyan_2",
"ad0_banyan_3",
"ad0_banyan_4",
"ad0_banyan_5",
"ad0_banyan_6",
}
local base = {
	footprintx = 2,
	footprintz = 2,
	blocking = true,
	upright = true,
	energy = 500,
	metal = 0,
	hitdensity = 0,
	maxdamage = 250,
	flammable = true,
	autoreclaimable = true,
	reclaimable = true,
	category = "Vegetation",
	crushresistance = 9999,
	mass = 100,
	collisionvolumetype = "box",
	collisionvolumescales = "24 64 24",
	collisionvolumeoffsets = "0 16 0",
}

for i,name in ipairs(ad0features) do
	ad0features[name] = {}
	for k, v in pairs(base) do
		ad0features[name][k] = v
	end

	ad0features[name].description = "Banyan"
	ad0features[name].name = name
	ad0features[name].object = "ad0_banyan/" .. name .. ".s3o"
	ad0features[name].customparams = {
		model_author = "Beherith, 0 A.D.",
		normalmaps = "yes",
		normaltex = "unittextures/".. "ad0_banyan" .. "_normal.tga",
		treeshader = "yes",
		randomrotate = "true",
		category = "Plants",
		set = "0AD features",
	}

end
return ad0features
		