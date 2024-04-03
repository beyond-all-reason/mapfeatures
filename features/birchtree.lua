local Base = {
	description = "Birch tree",
	footprintx = 1,
	footprintz = 1,
	blocking = true,
	upright = false,
	energy = 150,
	metal = 0,
	hitdensity = 0,
	maxdamage = 250,
	flammable = true,
	autoreclaimable = true,
	reclaimable = true,
	category = "Vegetation",
	crushresistance = 30,
	mass = 20,
	collisionvolumetype = "CylY",
	collisionvolumescales = "24 65 24",
	collisionvolumeoffsets = "0 20 0",
	customparams = {
		author = "Nikuksis, Beherith, 0 A.D.",
		category = "Vegetation",
		set = "Trees",
		normalmaps = "no",
		normaltex = "unittextures/birch_tree_03_normal.tga",
		treeshader = "yes",
		randomrotate = "true",
		cuspbr = "yes",
	},
}

local trees = {}
for j = 1, 4 do 
	for i = 1, 8 do
		local name = "euro_birch_tree_0" .. tostring(i) .. '_' .. tostring(j)
		local def = {}
		for k, v in pairs(Base) do
			def[k] = v
		end
		def.name = name
		def.object =  name .. ".s3o"
		trees[name] = def
	end
end
return trees
