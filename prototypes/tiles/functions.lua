--TODO: do something besides blindly import these functions from 1.1 lua sources

local function make_tile_transition_from_template_variation(src_x, src_y, cnt_, line_len_, is_tall, normal_res_transition, high_res_transition)
    return
    {
      picture = normal_res_transition,
      count = cnt_,
      line_length = line_len_,
      x = src_x,
      y = src_y,
      tall = is_tall,
      hr_version =
      {
        picture = high_res_transition,
        count = cnt_,
        line_length = line_len_,
        x = 2 * src_x,
        y = 2 * (src_y or 0),
        tall = is_tall,
        scale = 0.5
      }
    }
  end

function make_generic_transition_template(to_tiles, group1, group2, normal_res_transition, high_res_transition, options, base_layer, background, mask)
    local t = options.base or {}
    t.to_tiles = to_tiles
    t.transition_group = group1
    t.transition_group1 = group2 and group1 or nil
    t.transition_group2 = group2
    local default_count = options.count or 16
    for k,y in pairs({inner_corner = 0, outer_corner = 288, side = 576, u_transition = 864, o_transition = 1152}) do
      local count = options[k .. "_count"] or default_count
      if count > 0 and type(y) == "number" then
        local line_length = options[k .. "_line_length"] or count
        local is_tall = true
        if (options[k .. "_tall"] == false) then
          is_tall = false
        end
        if base_layer == true then
          t[k] = make_tile_transition_from_template_variation(0, y, count, line_length, is_tall, normal_res_transition, high_res_transition)
        end
        if background == true then
          t[k .. "_background"] = make_tile_transition_from_template_variation(544, y, count, line_length, is_tall, normal_res_transition, high_res_transition)
        end
        if mask == true then
          t[k .. "_mask"] = make_tile_transition_from_template_variation(1088, y, count, line_length, nil, normal_res_transition, high_res_transition)
        end
  
        if options.effect_map ~= nil then
          local effect_default_count = options.effect_map.count or 16
          local effect_count = options.effect_map[k .. "_count"] or effect_default_count
          if effect_count > 0 then
            local effect_line_length = options.effect_map[k .. "_line_length"] or effect_count
            local effect_is_tall = true
            if (options.effect_map[k .. "_tall"] == false) then
              effect_is_tall = false
            end
            t[k .. "_effect_map"] = make_tile_transition_from_template_variation(0, y, effect_count, effect_line_length, effect_is_tall, options.effect_map.filename_norm, options.effect_map.filename_high)
          end
        end
      end
    end
    return t
  end

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
		base = {
            background_layer_offset = 1,
            background_layer_group = 0,
            offset_background_layer_by_tile_layer = true
        }
	},
	false,
	true,
	true
)

function _G.water_transition_template_with_effect(to_tiles, normal_res_transition, high_res_transition, options)
	return make_generic_transition_template(to_tiles, water_transition_group_id, nil, normal_res_transition, high_res_transition, options, true, false, true)
end

function _G.add_material_background(tile, filename, filename_hr, count, template)
	count = count or 4
    local variants = table.deepcopy(data.raw.tile[template or 'concrete'].variants)
    
    variants.main = {
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
        }
    }
    variants.material_background = {
        picture = filename,
        count = count,
        hr_version = {
            picture = filename_hr,
            scale = 0.5,
            count = count
        }
    }
    
    tile.variants = variants
	tile.transitions_between_transitions = table.deepcopy(data.raw.tile[template or 'concrete'].transitions_between_transitions)

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