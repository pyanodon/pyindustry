require("prototypes/void-recipes/fluid-void")
require("prototypes/void-recipes/item-void")

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
            local fluid_boxes = {}

            for _, fluid_box in pairs(entity.fluid_boxes or {}) do
                fluid_boxes[#fluid_boxes+1] = fluid_box
            end

            if entity.fluid_box then
                fluid_boxes[#fluid_boxes+1] = entity.fluid_box
            end

            if entity.input_fluid_box then
                fluid_boxes[#fluid_boxes+1] = entity.input_fluid_box
            end

            if entity.output_fluid_box then
                fluid_boxes[#fluid_boxes+1] = entity.output_fluid_box
            end

            if entity.fuel_fluid_box then
                fluid_boxes[#fluid_boxes+1] = entity.fuel_fluid_box
            end

            if entity.oxidizer_fluid_box then
                fluid_boxes[#fluid_boxes+1] = entity.oxidizer_fluid_box
            end

            if entity.energy_source and entity.energy_source.type == "fluid" then
                fluid_boxes[#fluid_boxes+1] = entity.energy_source.fluid_box
            end

            for _, fluid_box in pairs(fluid_boxes) do
                if type(fluid_box) == "table" then
                    for _, pipe_connection in pairs(fluid_box.pipe_connections or {}) do
                        ---@cast pipe_connection PipeConnectionDefinition
                        if type(pipe_connection) ~= "table" then
                            error("Invalid pipe_connection spec on " .. entity.name)
                        end

                        local connection_category = pipe_connection.connection_category
                        if connection_category == nil then
                            connection_category = { "default" }
                        elseif type(connection_category) == "string" then
                            connection_category = { connection_category }
                        end
                        ---@cast connection_category string[]

                        -- May have at most one category when connection_type is "underground"
                        -- Only loaded if connection_type is "normal" or "underground"
                        if pipe_connection.connection_type ~= "underground" and table.find(connection_category, "default") then
                            connection_category[#connection_category+1] = "pipe"
                            connection_category[#connection_category+1] = "niobium-pipe"
                            connection_category[#connection_category+1] = "ht-pipes"   -- no need to check if pyhightech is installed
                            ---@diagnostic disable-next-line inject-field
                            pipe_connection.connection_category = connection_category
                        end
                    end
                end
            end
        end
        ::continue::
    end

    for _, pipe in pairs({ table.unpack(data.raw["pipe"]), table.unpack(data.raw["pipe-to-ground"]) }) do
        for _, pipe_connection in pairs(pipe.fluid_box.pipe_connections) do
            if pipe_connection.connection_category == nil then
                pipe_connection.connection_category = { "pipe" }
            end
        end
    end
end
