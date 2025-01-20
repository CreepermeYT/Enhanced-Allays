execute unless data storage enhanced_allays:enabled allay_tp run data modify storage enhanced_allays:enable allay_tp set value 0
execute if data storage enhanced_allays:enabled allay_tp run data remove storage enhanced_allays:enabled allay_tp

execute if data storage enhanced_allays:enable allay_tp run data modify storage enhanced_allays:enabled allay_tp set value 0
execute if data storage enhanced_allays:enable allay_tp run data remove storage enhanced_allays:enable allay_tp
function enhanced_allays:.config