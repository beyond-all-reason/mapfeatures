
local Base = {
	description = "Ferns",

	footprintx = 2,
	footprintz = 2,
	blocking = true,
	upright = true,

	metal = 0,
	energy = 100,

	damage = 250,
	flammable = true,
	crushresistance = 30,

	collisionvolumetype = "CylY",
	collisionvolumescales = "24 32 24",
	collisionvolumeoffsets = "0 0 0",

	customparams = {
		author = "Lathan",
		category = "bush",
		set = "Lathan's Ferns",
		normalmaps = "yes",
		normaltex = "unittextures/fernsn.tga",
		treeshader = "no",
		randomrotate = "true",
	},
}

local ferns = {}
for i = 1, 8 do
	local name = "cycas" .. i
	local def = {}
	for k, v in pairs(Base) do
		def[k] = v
	end
	def.name = name
	def.object =  'fern' .. i .. ".s3o"

	if i == 1 then
		def.description = "Ferns and Stones" -- may break my bones?
	elseif i == 2 then
		def.description = "Fern"
	elseif i == 6 then
		def.description = "Ferns and Stone"
	elseif i == 8 then
		def.description = "Ferns and Stone"
	end
	ferns[name] = def
end

return ferns
