execute unless block ~ ~ ~ #air positioned ^ ^ ^-1 if block ~ ~ ~ #air if predicate allay_torchers:nolight run function allay_torchers:positionfinding/possibleplace
execute unless block ~ ~ ~ #air run return 0
#particle minecraft:composter ~ ~ ~
scoreboard players remove r allt.score 1
execute if score r allt.score matches 0 run return 1
execute positioned ^ ^ ^1 run function allay_torchers:positionfinding/ray