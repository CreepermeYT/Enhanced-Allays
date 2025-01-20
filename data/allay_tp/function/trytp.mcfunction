#if unsafe return
$execute positioned ~-1 ~ ~-1 positioned ~$(DeathTime) ~$(HurtTime) ~$(Fire) unless function allay_tp:ispositionsafe run data modify entity @s DeathTime set value 1s
$execute positioned ~-1 ~ ~-1 positioned ~$(DeathTime) ~$(HurtTime) ~$(Fire) unless function allay_tp:ispositionsafe run return 0

#tp and reset
$execute positioned ~-1 ~ ~-1 run tp @s ~$(DeathTime) ~$(HurtTime) ~$(Fire)
execute positioned ~ ~ ~ run playsound minecraft:entity.allay.ambient_without_item block @a[distance=..5] ~ ~ ~ 0.3 1.3 0
data modify entity @s DeathTime set value 0s
data modify entity @s Fire set value 0s
data modify entity @s HurtTime set value 0s