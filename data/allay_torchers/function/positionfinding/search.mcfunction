scoreboard players set r allt.score 16
execute positioned ^ ^ ^1 run function allay_torchers:positionfinding/ray
execute unless score r allt.score matches 0 run scoreboard players reset r allt.score
execute unless score r allt.score matches 0 run return 0
scoreboard players reset r allt.score

execute positioned ^ ^ ^14 run function allay_torchers:positionfinding/possibleplace