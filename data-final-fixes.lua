require "prototypes/void-recipes/fluid-void"
require "prototypes/void-recipes/item-void"

for name, storage_tank in pairs(data.raw["storage-tank"]) do
    if name:find("py%-tank") then
        storage_tank.fast_replaceable_group = "storage-tank"
    end
end

if settings.startup["py-braided-pipes"].value then
    -- the following bloc of code handles adding pipe connection_categories to all fluidboxes in the game.
    -- this allows for underground pipe weaving with pyhightech and niobium pipes
    for entity_prototype in pairs(defines.prototypes.entity) do
        if entity_prototype == "pipe" or entity_prototype == "pipe-to-ground" then
            goto continue
        end

        for _, entity in pairs(data.raw[entity_prototype] or {}) do
            local fluid_boxes = entity.fluid_boxes or {}

            if entity.fluid_box then
                fluid_boxes[#fluid_boxes + 1] = entity.fluid_box
            end

            if entity.input_fluid_box then
                fluid_boxes[#fluid_boxes + 1] = entity.input_fluid_box
            end

            if entity.output_fluid_box then
                fluid_boxes[#fluid_boxes + 1] = entity.output_fluid_box
            end

            if entity.fuel_fluid_box then
                fluid_boxes[#fluid_boxes + 1] = entity.fuel_fluid_box
            end

            if entity.oxidizer_fluid_box then
                fluid_boxes[#fluid_boxes + 1] = entity.oxidizer_fluid_box
            end

            for _, fluid_box in pairs(fluid_boxes) do
                if type(fluid_box) == "table" then
                    for _, pipe_connection in pairs(fluid_box.pipe_connections or {}) do
                        local connection_category = pipe_connection.connection_category
                        if connection_category == nil then
                            connection_category = {"default"}
                        elseif type(connection_category) == "string" then
                            connection_category = {connection_category}
                        end

                        connection_category[#connection_category + 1] = "pipe"
                        connection_category[#connection_category + 1] = "niobium-pipe"
                        connection_category[#connection_category + 1] = "ht-pipes" -- no need to check if pyhightech is installed

                        pipe_connection.connection_category = connection_category
                    end
                end
            end
        end
        ::continue::
    end

    for _, pipe in pairs{data.raw.pipe.pipe, data.raw["pipe-to-ground"]["pipe-to-ground"]} do
        for _, pipe_connection in pairs(pipe.fluid_box.pipe_connections) do
            pipe_connection.connection_category = {"pipe"}
        end
    end
end