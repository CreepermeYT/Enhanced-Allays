## Run by current ea.selectedtarget

## Finds nearest ea.validallay within 48 blocks and tags it as ea.selectedallay
execute as @n[type=allay,tag=ea.validallay,tag=!ea.stuck,distance=..48] run tag @s add ea.selectedallay

## Particles bc why not
function enhanced_allays:common/pathfinding/particles with storage ea 

## Disable the Allay's AI and tag it
data modify entity @n[tag=ea.selectedallay] NoAI set value 1b
tag @n[tag=ea.selectedallay] add ea.pathfinding

## Run pathfinding logic from ea.selectedallay
execute as @n[tag=ea.selectedallay] at @s run function enhanced_allays:common/pathfinding/goallay

## Clean up
tag @n[tag=ea.selectedallay] remove ea.selectedallay
