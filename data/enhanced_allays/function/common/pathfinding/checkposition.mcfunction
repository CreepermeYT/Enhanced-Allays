function enhanced_allays:common/pathfinding/ispositionsafe with storage ea

execute unless score sc ea.pathfind matches 1 run return 0
scoreboard players reset sc ea.pathfind
return 1