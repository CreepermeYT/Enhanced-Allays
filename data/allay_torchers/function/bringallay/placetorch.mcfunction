execute unless block ~1 ~ ~ #allay_torchers:torch_unplaceable run setblock ~ ~ ~ minecraft:wall_torch[facing=west]
execute if block ~ ~ ~ wall_torch run return 1
execute unless block ~-1 ~ ~ #allay_torchers:torch_unplaceable run setblock ~ ~ ~ minecraft:wall_torch[facing=east]
execute if block ~ ~ ~ wall_torch run return 1
execute unless block ~ ~ ~1 #allay_torchers:torch_unplaceable run setblock ~ ~ ~ minecraft:wall_torch[facing=north]
execute if block ~ ~ ~ wall_torch run return 1
execute unless block ~ ~ ~-1 #allay_torchers:torch_unplaceable run setblock ~ ~ ~ minecraft:wall_torch[facing=south]
execute if block ~ ~ ~ wall_torch run return 1
execute unless block ~ ~-1 ~ #allay_torchers:torch_unplaceable run setblock ~ ~ ~ minecraft:torch
execute if block ~ ~ ~ torch run return 1
#say wooot fail
return 0