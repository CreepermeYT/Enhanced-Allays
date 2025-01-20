#here
execute unless block ~ ~0.35 ~ #minecraft:air unless block ~ ~0.35 ~ minecraft:short_grass unless block ~ ~0.35 ~ minecraft:water run return 0
#forward
execute unless block ~ ~0.35 ~0.2 #minecraft:air unless block ~ ~0.35 ~0.2 minecraft:short_grass unless block ~ ~0.35 ~0.2 minecraft:water run return 0
#backward
execute unless block ~ ~0.35 ~-0.2 #minecraft:air unless block ~ ~0.35 ~-0.2 minecraft:short_grass unless block ~ ~0.35 ~-0.2 minecraft:water run return 0
#left
execute unless block ~0.2 ~0.35 ~ #minecraft:air unless block ~0.2 ~0.35 ~ minecraft:short_grass unless block ~0.2 ~0.35 ~ minecraft:water run return 0
#right
execute unless block ~-0.2 ~0.35 ~ #minecraft:air unless block ~-0.2 ~0.35 ~ minecraft:short_grass unless block ~-0.2 ~0.35 ~ minecraft:water run return 0
return 1