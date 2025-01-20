#avoid NoAI allays
execute as @e[tag=allayw.allayb] run data modify entity @s NoAI set value 0b
tag @e[tag=allayw.allayb] remove allayw.allayb

#oak
function allay_woodchoppers:checkfortree {tree:"oak"}

#spruce
function allay_woodchoppers:checkfortree {tree:"spruce"}

#birch
function allay_woodchoppers:checkfortree {tree:"birch"}

#jungle
function allay_woodchoppers:checkfortree {tree:"jungle"}

#dark_oak
function allay_woodchoppers:checkfortree {tree:"dark_oak"}

#cherry
function allay_woodchoppers:checkfortree {tree:"cherry"}