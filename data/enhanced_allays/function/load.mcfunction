function allay_army:load
function allay_woodchoppers:load
function allay_tp:load

data modify storage enhanced_allays:enabled allay_army set value 0
data modify storage enhanced_allays:enabled allay_woodchoppers set value 0
data modify storage enhanced_allays:enabled allay_tp set value 0

tellraw @a [{"text":"     ","bold":true},{"text":"<<","color":"dark_purple"},{"text":"Enhanced","color":"gold"},{"text":">> ","color":"dark_purple"},{"text":"Allays","color":"aqua"},{"text":" datapack/mod","color":"gray","bold":false}," loaded!"]