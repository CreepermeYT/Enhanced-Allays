execute unless block ~ ~ ~ #air run kill @s

particle dust{color:[1.0,1.0,0.8],scale:.7} ~ ~ ~ 0.2 0.3 0.2 0 2 normal

tag @s add allt.bring
execute as @n[type=allay,tag=allt.has,tag=allt.acthas,tag=!allt.allayb,tag=!allt.stuck,distance=..48] run tag @s add allt.moveallay
execute as @n[tag=allt.moveallay] at @s run data modify entity @s NoAI set value 1b
execute as @n[tag=allt.moveallay] at @s run function allay_torchers:bringallay/goallay
tag @n[tag=allt.moveallay] remove allt.inplace
tag @n[tag=allt.moveallay] remove allt.moveallay
tag @s remove allt.bring
