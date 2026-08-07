$execute if block ~ ~1 ~ $(tree)_leaves run tag @s add hasleaves
$execute if block ~ ~2 ~ $(tree)_leaves run tag @s add hasleaves
$execute if block ~ ~3 ~ $(tree)_leaves run tag @s add hasleaves
$execute if block ~ ~4 ~ $(tree)_leaves run tag @s add hasleaves
execute if entity @s[tag=hasleaves] run return 1
$execute if block ~ ~4 ~ $(tree)_log positioned ~ ~4 ~ run function allay_woodchoppers:alignmarker/checkleaves {tree:"$(tree)"}
return 0
