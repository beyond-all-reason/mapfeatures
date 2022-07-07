 -- its a table of index: s3oname
local ad0features = {
"fir_tree_small_1__tree_fir_tall_1",
"fir_tree_small_1__tree_fir_tall_2",
"fir_tree_small_1__tree_fir_tall_3",
"fir_tree_small_1__tree_fir_tall_4",
"fir_tree_small_1__tree_fir_tall_5",
"fir_tree_small_2__tree_fir_tall_1",
"fir_tree_small_2__tree_fir_tall_2",
"fir_tree_small_2__tree_fir_tall_3",
"fir_tree_small_2__tree_fir_tall_4",
"fir_tree_small_2__tree_fir_tall_5",
"fir_tree_small_3__tree_fir_tall_1",
"fir_tree_small_3__tree_fir_tall_2",
"fir_tree_small_3__tree_fir_tall_3",
"fir_tree_small_3__tree_fir_tall_4",
"fir_tree_small_3__tree_fir_tall_5",
"fir_tree_tall_1__tree_fir_tall_1",
"fir_tree_tall_1__tree_fir_tall_2",
"fir_tree_tall_1__tree_fir_tall_3",
"fir_tree_tall_1__tree_fir_tall_4",
"fir_tree_tall_1__tree_fir_tall_5",
"fir_tree_tall_2__tree_fir_tall_1",
"fir_tree_tall_2__tree_fir_tall_2",
"fir_tree_tall_2__tree_fir_tall_3",
"fir_tree_tall_2__tree_fir_tall_4",
"fir_tree_tall_2__tree_fir_tall_5",
"fir_tree_tall_3__tree_fir_tall_1",
"fir_tree_tall_3__tree_fir_tall_2",
"fir_tree_tall_3__tree_fir_tall_3",
"fir_tree_tall_3__tree_fir_tall_4",
"fir_tree_tall_3__tree_fir_tall_5",
"fir_tree_tall_4__tree_fir_tall_1",
"fir_tree_tall_4__tree_fir_tall_2",
"fir_tree_tall_4__tree_fir_tall_3",
"fir_tree_tall_4__tree_fir_tall_4",
"fir_tree_tall_4__tree_fir_tall_5",
"fir_tree_tall_5__tree_fir_tall_1",
"fir_tree_tall_5__tree_fir_tall_2",
"fir_tree_tall_5__tree_fir_tall_3",
"fir_tree_tall_5__tree_fir_tall_4",
"fir_tree_tall_5__tree_fir_tall_5",
"fir_tree_tall_6__tree_fir_tall_1",
"fir_tree_tall_6__tree_fir_tall_2",
"fir_tree_tall_6__tree_fir_tall_3",
"fir_tree_tall_6__tree_fir_tall_4",
"fir_tree_tall_6__tree_fir_tall_5",
"fir_tree_tall_7__tree_fir_tall_1",
"fir_tree_tall_7__tree_fir_tall_2",
"fir_tree_tall_7__tree_fir_tall_3",
"fir_tree_tall_7__tree_fir_tall_4",
"fir_tree_tall_7__tree_fir_tall_5",
"fir_tree_tall_8__tree_fir_tall_1",
"fir_tree_tall_8__tree_fir_tall_2",
"fir_tree_tall_8__tree_fir_tall_3",
"fir_tree_tall_8__tree_fir_tall_4",
"fir_tree_tall_8__tree_fir_tall_5",
}
local base = {
	footprintx = 1,
	footprintz = 1,
	blocking = true,
	upright = true,
	energy = 250,
	metal = 0,
	hitdensity = 0,
	damage = 2500,
	flammable = true,
	autoreclaimable = true,
	reclaimable = true,
	category = "Vegetation",
	crushresistance = 20,
}

for i,name in ipairs(ad0features) do
	ad0features[name] = {}
	for k, v in pairs(base) do
		ad0features[name][k] = v
	end

	ad0features[name].description = "Fir Tree"
	ad0features[name].name = "Fir Tree"
	ad0features[name].object = "ad0_fir/" .. name .. ".s3o"
	ad0features[name].customparams = {
		model_author = "Beherith, 0 A.D.",
		normalmaps = "yes",
		normaltex = "unittextures/".. "ad0_fir" .. "_normal.tga",
		treeshader = "yes",
		randomrotate = "true",
		category = "Plants",
		set = "0AD features",
	}

end
return ad0features
		
