_G.dirt_out_of_map_transition = make_generic_transition_template(
	nil,
	default_transition_group_id,
	out_of_map_transition_group_id,
	'__base__/graphics/terrain/out-of-map-transition/dirt-out-of-map-transition.png',
	'__base__/graphics/terrain/out-of-map-transition/hr-dirt-out-of-map-transition.png',
	{
		inner_corner_tall = true,
		inner_corner_count = 3,
		outer_corner_count = 3,
		side_count = 3,
		u_transition_count = 1,
		o_transition_count = 0,
		base = init_transition_between_transition_common_options()
	},
	false,
	true,
	true
)

function _G.water_transition_template_with_effect(to_tiles, normal_res_transition, high_res_transition, options)
	return make_generic_transition_template(to_tiles, water_transition_group_id, nil, normal_res_transition, high_res_transition, options, true, false, true)
end

function _G.add_material_background(tile, filename, filename_hr, count)
	count = count or 4
    tile.variants = {
        main = {
            {
                count = 1,
                picture = '__base__/graphics/terrain/water-wube/concrete-dummy.png',
                size = 1
            },
            {
                count = 1,
                picture = '__base__/graphics/terrain/water-wube/concrete-dummy.png',
                probability = 1,
                size = 2
            },
            {
                count = 1,
                picture = '__base__/graphics/terrain/water-wube/concrete-dummy.png',
                probability = 1,
                size = 4
            },
        },
        material_background = {
            picture = filename,
            count = count,
            hr_version = {
                picture = filename_hr,
                scale = 0.5,
                count = count
            }
        },
        inner_corner = {
            picture = '__pyindustry__/graphics/tiles/py-asphalt/concrete-inner-corner.png',
            count = 8
        },
        outer_corner = {
            picture = '__pyindustry__/graphics/tiles/py-asphalt/concrete-outer-corner.png',
            count = 8
        },
        side = {
            picture = '__pyindustry__/graphics/tiles/py-asphalt/concrete-side.png',
            count = 8
        },
        u_transition = {
            picture = '__pyindustry__/graphics/tiles/py-asphalt/concrete-u.png',
            count = 8
        },
        o_transition = {
            picture = '__pyindustry__/graphics/tiles/py-asphalt/concrete-o.png',
            count = 1
        }
    }
	tile.transitions_between_transitions = {
        make_generic_transition_template(
            nil,
            default_transition_group_id,
            water_transition_group_id,
            '__base__/graphics/terrain/water-transitions/dry-dirt-transition.png',
            '__base__/graphics/terrain/water-transitions/hr-dry-dirt-transition.png',
            {
                effect_map = base_tile_transition_effect_maps.water_dirt_to_land,
                o_transition_tall = false,
                inner_corner_count = 3,
                outer_corner_count = 3,
                side_count = 3,
                u_transition_count = 1,
                o_transition_count = 0,
                base = { water_patch = patch_for_inner_corner_of_transition_between_transition, }
            },
            true,
            false,
            true
        ),
        dirt_out_of_map_transition,
        generic_transition_between_transitions_template(
            water_transition_group_id,
            out_of_map_transition_group_id,
            '__base__/graphics/terrain/out-of-map-transition/dry-dirt-shore-out-of-map-transition.png',
            '__base__/graphics/terrain/out-of-map-transition/hr-dry-dirt-shore-out-of-map-transition.png',
            {
                effect_map = base_tile_transition_effect_maps.water_dirt_to_out_of_map,
                o_transition_tall = false,
                inner_corner_count = 3,
                outer_corner_count = 3,
                side_count = 3,
                u_transition_count = 1,
                o_transition_count = 0,
                base = init_transition_between_transition_water_out_of_map_options()
            }
        ),
    }
    tile.transitions = {
        water_transition_template_with_effect(
            water_tile_type_names,
            '__base__/graphics/terrain/water-transitions/dry-dirt.png',
            '__base__/graphics/terrain/water-transitions/hr-dry-dirt.png',
            {
                effect_map = base_tile_transition_effect_maps.water_dirt,
                o_transition_tall = false,
                u_transition_count = 2,
                o_transition_count = 4,
                side_count = 8,
                outer_corner_count = 8,
                inner_corner_count = 8
            }
        ),
        data.raw.tile['grass-1'].transitions[2]
    }
end

if mods.pystellarexpedition then
    table.insert(data.raw.tile['grass-1'].transitions[2].to_tiles, 'space')
    table.insert(data.raw.tile['concrete'].transitions[2].to_tiles, 'space')
    table.insert(data.raw.tile['stone-path'].transitions[2].to_tiles, 'space')
end