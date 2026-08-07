execute unless block ~ ~ ~ #allay_torchers:safe positioned ^ ^ ^-1 if block ~ ~ ~ #allay_torchers:safe if predicate allay_torchers:nolight run function allay_torchers:positionfinding/possibleplace
execute unless block ~ ~ ~ #allay_torchers:safe run return 0
#particle minecraft:composter ~ ~ ~
scoreboard players remove r allt.score 1
execute if score r allt.score matches 0 if function allay_torchers:positionfinding/possibleplace run return 1
execute positioned ^ ^ ^1 run function allay_torchers:positionfinding/ray