if mods["omnimatter_water"] then
    RECIPE("py-sinkhole"):remove_unlock("steel-processing"):add_unlock("engine")
end
if mods["LogisticTrainNetwork"] then
    TECHNOLOGY("logistic-train-network"):remove_pack("logistic-science-pack"):add_pack("py-science-pack-1")
end
