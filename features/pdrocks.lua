-----------------------------------------------------------------------------
--  agorm_rock*
-----------------------------------------------------------------------------
local Base	=	{
	blocking			= true,
	category			= "rocks",
	damage				= 100,
	description			= "Rock",
	energy				= 0,

	flammable			= false,
	footprintX			= 2,
	footprintZ			= 2,
	height				= 16,
	hitdensity			= 0,
	metal				= 50,
	reclaimable			= true,
	autoreclaimable		= true, 	
	upright 			= false,
	world				= "All Worlds",
	customparams = { 
		author = "Beherith",
		category = "rocks",
		set = "Beherith Rocks",
		normalmaps = "yes",
		normaltex = "unittextures/pdrock_normals.tga",
		treeshader = "no",
		randomrotate = "true",
	}, 
}

local rocks = {}
for i = 1, 8 do 
	local name = 'pdrock' .. i
	local def = {}
	for k, v in pairs(Base) do
		def[k] = v
	end
	def.name = name
	def.object =  'pdrock/'..'pdrock' .. i .. ".s3o"
	rocks[name] = def
end


return rocks