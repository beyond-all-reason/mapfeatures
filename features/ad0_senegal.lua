-----------------------------------------------------------------------------
--  Senegal palm trees - ad0_senegal_*
-----------------------------------------------------------------------------

local featureDef	=	{
	--name				= "ad0_senegal_1",
	world				="All Worlds",
	--object			="ad0_senegal_1.s3o",
	blocking			=true,
	category			="Vegetation",
	crushresistance 	=30,
	description			="Palm Tree",
	energy				=250,
	footprintx			=1,
	footprintz			=1,
	height				=30,
	hitdensity			=0,
	metal				=0,
	mass				=20,
	flammable			=true,
	reclaimable			=true,
	autoreclaimable		=true,
	upright				=false,
	collisionvolumeoffsets = "-2 0 2",
    collisionvolumescales = "8 52 8",
    collisionvolumetype = "CylY",
	customparams = {
		model_author = "Beherith, 0 A.D.",
		normalmaps = "yes",
		normaltex = "unittextures/ad0senegal_normal.tga",
		treeshader = "yes",
		randomrotate = "true",
		category = "Plants",
		set = "Senegal Palm Trees 0AD",
	},
}

local senegalpalms = {}
for i = 1, 7 do
	for _,sizeclass in pairs({'','_large'}) do
		local name = 'ad0_senegal_' .. i .. sizeclass
		local def = {}
		for k, v in pairs(featureDef) do
			def[k] = v
		end
		def.name = name
		def.object =  name .. ".s3o"
		senegalpalms[name] = def
		if sizeclass == '_large' then
			if i == 1 then
				senegalpalms[name].collisionvolumescales = "12 78 12"
				senegalpalms[name].collisionvolumeoffsets = "-2 0 2"
			elseif i == 2 then
				senegalpalms[name].collisionvolumescales = "24 96 24"
				senegalpalms[name].collisionvolumeoffsets = "10 0 -4"
			elseif i == 3 then
				senegalpalms[name].collisionvolumescales = "24 128 24"
				senegalpalms[name].collisionvolumeoffsets = "-2 0 6"
			elseif i == 4 then
				senegalpalms[name].collisionvolumescales = "18 156 18"
				senegalpalms[name].collisionvolumeoffsets = "-6 0 -2"
			elseif i == 5 then
				senegalpalms[name].collisionvolumescales = "18 192 18"
				senegalpalms[name].collisionvolumeoffsets = "0 0 2"
			elseif i == 6 then
				senegalpalms[name].collisionvolumescales = "18 206 18"
				senegalpalms[name].collisionvolumeoffsets = "2 0 -6"
			elseif i == 7 then
				senegalpalms[name].collisionvolumescales = "24 240 24"
				senegalpalms[name].collisionvolumeoffsets = "6 0 4"
			end
		else
			if i == 2 then
				senegalpalms[name].collisionvolumescales = "14 72 14"
				senegalpalms[name].collisionvolumeoffsets = "7 0 -4"
			elseif i == 3 then
				senegalpalms[name].collisionvolumescales = "18 72 18"
				senegalpalms[name].collisionvolumeoffsets = "-1 0 2"
			elseif i > 3 then
				senegalpalms[name].collisionvolumescales = "12 96 12"
				if i == 4 then
					senegalpalms[name].collisionvolumeoffsets = "-4 0 -2"
				elseif i == 5 then
					senegalpalms[name].collisionvolumeoffsets = "0 0 0"
				elseif i == 6 then
					senegalpalms[name].collisionvolumeoffsets = "0 0 -4"
				elseif i == 7 then
					senegalpalms[name].collisionvolumeoffsets = "2 0 0"
				end
			end
		end
	end
end

return senegalpalms
