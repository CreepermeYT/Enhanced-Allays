function allay_army:load
function allay_woodchoppers:load
function allay_tp:load
function allay_torchers:load

scoreboard objectives add ea.menu trigger
scoreboard objectives add ea.pathfind dummy

execute unless score aa ea.menu matches 0..1 run scoreboard players set aa ea.menu 1
execute unless score aw ea.menu matches 0..1 run scoreboard players set aw ea.menu 1
execute unless score atp ea.menu matches 0..1 run scoreboard players set atp ea.menu 1
execute unless score at ea.menu matches 0..1 run scoreboard players set at ea.menu 1

execute unless score aws ea.menu matches 0..1 run scoreboard players set aws ea.menu 1

data remove storage enhanced_allays:enabled allay_army
data remove storage enhanced_allays:enabled allay_woodchoppers
data remove storage enhanced_allays:enabled allay_tp
data remove storage enhanced_allays:enabled allay_torchers

scoreboard players reset v ea.menu
function enhanced_allays:versioncheck

tellraw @a [{"text":"-> ","bold":true},{"text":"LOADED","color":"green"},{"text":": ","color":"gray"},"","","",{"text":" <<","color":"dark_purple"},{"text":"Enhanced","color":"gold"},{"text":">> ","color":"dark_purple"},{"text":"Allays","color":"aqua"},{"text":" datapack/mod","color":"gray","bold":false},"     ",{"text":"  v2.1","color":"dark_gray","bold":false}]