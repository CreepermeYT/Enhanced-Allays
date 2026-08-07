execute if block ~ ~1 ~ #air positioned ~ ~2 ~ if predicate allay_torchers:validlocation if function allay_torchers:positionfinding/trysummon run return 1

execute positioned ~ ~1 ~ if predicate allay_torchers:validlocation if function allay_torchers:positionfinding/trysummon run return 1

execute if predicate allay_torchers:validlocation if function allay_torchers:positionfinding/trysummon run return 1

execute positioned ~ ~-1 ~ if predicate allay_torchers:validlocation if function allay_torchers:positionfinding/trysummon run return 1

execute if block ~ ~-1 ~ #air positioned ~ ~-2 ~ if predicate allay_torchers:validlocation if function allay_torchers:positionfinding/trysummon run return 1
return 1