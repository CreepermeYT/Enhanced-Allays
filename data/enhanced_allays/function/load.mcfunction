function allay_army:load
function allay_woodchoppers:load
function allay_tp:load

scoreboard objectives add ea.menu trigger

execute unless score aa ea.menu matches 0..1 run scoreboard players set aa ea.menu 1
execute unless score aw ea.menu matches 0..1 run scoreboard players set aa ea.menu 1
execute unless score at ea.menu matches 0..1 run scoreboard players set aa ea.menu 1

data remove storage enhanced_allays:enabled allay_army
data remove storage enhanced_allays:enabled allay_woodchoppers
data remove storage enhanced_allays:enabled allay_tp

scoreboard players reset v ea.menu
summon armor_stand ~ -128 ~ {Tags:['cmyt.versioncheck'],HandItems:[{id:"minecraft:dirt"}],equipment:{mainhand:{id:"minecraft:dirt"}}}
execute if data entity @n[tag=cmyt.versioncheck] HandItems[0] run scoreboard players set v ea.menu 1210
execute if data entity @n[tag=cmyt.versioncheck] equipment.mainhand run scoreboard players set v ea.menu 1215
kill @e[tag=cmyt.versioncheck]
summon cow ~ -128 ~ {Tags:['cmyt.versioncheck'],home_radius:0}
execute if data entity @n[tag=cmyt.versioncheck] home_radius run scoreboard players set v ea.menu 1216
kill @e[tag=cmyt.versioncheck]

tellraw @a [{"text":"-> ","bold":true},{"text":"LOADED","color":"green"},{"text":": ","color":"gray"},"","","",{"text":" <<","color":"dark_purple"},{"text":"Enhanced","color":"gold"},{"text":">> ","color":"dark_purple"},{"text":"Allays","color":"aqua"},{"text":" datapack/mod","color":"gray","bold":false},"     ",{"text":"  v1.1","color":"dark_gray","bold":false}]