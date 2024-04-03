

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
	crushresistance = 150,
	mass = 100,
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
	if i < 3 then
		ad0features[name].collisionvolumetype = "Box"
		ad0features[name].collisionvolumescales = "24 72 72"
		ad0features[name].collisionvolumeoffsets ="12 8 8"
	else
		ad0features[name].collisionvolumetype = "CylY"
		ad0features[name].collisionvolumescales = "24 132 24"
		ad0features[name].collisionvolumeoffsets ="0 16 0"
	end

end
return ad0features