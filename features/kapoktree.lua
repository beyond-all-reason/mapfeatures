local Base = {
	description = "Kapok Tree",
	footprintx = 1,
	footprintz = 1,
	blocking = true,
	upright = true,
	energy = 300,
	metal = 0,
	hitdensity = 0,
	maxdamage = 250,
	flammable = true,
	autoreclaimable = true,
	reclaimable = true,
	category = "Vegetation",
	crushresistance = 60,
	mass = 20,
	collisionvolumeoffsets = "-1 0 1",
    collisionvolumescales = "24 84 24",
    collisionvolumetype = "CylY",
	customparams = {
		author = "Nikuksis, 0 A.D.",
		category = "Vegetation",
		set = "Trees",
		normalmaps = "yes",
		normaltex = "unittextures/kapok_normal.dds",
		treeshader = "yes",
		randomrotate = "true",
	},
}

local trees = {}
for i = 1, 4 do
	local name = "kapok" .. i
	local def = {}
	for k, v in pairs(Base) do
		def[k] = v
	end
	def.name = name
	def.object =  name .. ".s3o"
	trees[name] = def
	if i == 1 then
		trees[name].collisionvolumescales = "24 250 24"
		trees[name].collisionvolumeoffsets = "0 0 0"
	elseif i == 2 then
		trees[name].collisionvolumescales = "24 178 24"
		trees[name].collisionvolumeoffsets = "0 0 0"
	end
end

return trees
