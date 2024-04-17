local S = function(s) return s end
if minetest.global_exists("intllib") then
	if intllib.make_gettext_pair then
		-- New method using gettext.
		S = intllib.make_gettext_pair()
	else
		-- Old method using text files.
		S = intllib.Getter()
	end
end


armor:register_armor("farmor:helmet_melon", {
	description = S("Melon Helmet"),
	inventory_image = "farmor_inv_helmet_melon.png",
		groups = {armor_head=1, armor_heal=0, armor_use=2000},
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=2, choppy=3, crumbly=2, level=1},
	})
armor:register_armor("farmor:helmet_pumpkin", {
	description = S("Pumpkin Helmet"),
	inventory_image = "farmor_inv_helmet_pumpkin.png",
		groups = {armor_head=1, armor_heal=0, armor_use=2000},
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=2, level=1},
	})
armor:register_armor("farmor:helmet_jackolantern", {
	description = S("Jack O'Lantern Helmet"),
	inventory_image = "farmor_inv_helmet_jackolantern.png",
		groups = {armor_head=1, armor_heal=5, armor_use=2000},
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=2, choppy=2, crumbly=2, level=1},
	})
armor:register_armor("farmor:helmet_pineapple", {
	description = S("Pineapple Helmet"),
	inventory_image = "farmor_inv_helmet_pineapple.png",
		groups = {armor_head=1, armor_heal=0, armor_use=2000},
		armor_groups = {fleshy=5},
		damage_groups = {cracky=3, snappy=2, choppy=3, crumbly=2, level=1},
	})

minetest.register_craft({
	output = "farmor:helmet_melon",
	recipe = {
		{"farming:melon_slice", "farming:melon_slice", "farming:melon_slice"},
		{"farming:melon_slice", "", "farming:melon_slice"},
		{"", "", ""},
	}
})
minetest.register_craft({
	output = "farmor:helmet_pumpkin",
	recipe = {
		{"farming:pumpkin_slice", "farming:pumpkin_slice", "farming:pumpkin_slice"},
		{"farming:pumpkin_slice", "", "farming:pumpkin_slice"},
		{"", "", ""},
	}
})
minetest.register_craft({
	output = "farmor:helmet_jackolantern",
	recipe = {
		{"farming:pumpkin_slice", "farming:pumpkin_slice", "farming:pumpkin_slice"},
		{"farming:pumpkin_slice", "default:torch", "farming:pumpkin_slice"},
		{"", "", ""},
	}
})
minetest.register_craft({
	output = "farmor:helmet_pineapple",
	recipe = {
		{"farming:pineapple_ring", "farming:pineapple_ring", "farming:pineapple_ring"},
		{"farming:pineapple_ring", "", "farming:pineapple_ring"},
		{"", "", ""},
	}
