execute if data storage enhanced_allays:enable allay_army run data modify storage enhanced_allays:enabled allay_army set value 0
execute if data storage enhanced_allays:enable allay_army run data remove storage enhanced_allays:enable allay_army
execute if data storage enhanced_allays:enable allay_woodchoppers run data modify storage enhanced_allays:enabled allay_woodchoppers set value 0
execute if data storage enhanced_allays:enable allay_woodchoppers run data remove storage enhanced_allays:enable allay_woodchoppers
execute if data storage enhanced_allays:enable allay_tp run data modify storage enhanced_allays:enabled allay_tp set value 0
execute if data storage enhanced_allays:enable allay_tp run data remove storage enhanced_allays:enable allay_tp

execute if data storage enhanced_allays:enabled allay_army run function allay_army:tick
execute if data storage enhanced_allays:enabled allay_woodchoppers run function allay_woodchoppers:tick
execute if data storage enhanced_allays:enabled allay_tp run function allay_tp:tick