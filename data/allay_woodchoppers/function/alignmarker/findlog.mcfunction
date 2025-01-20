$execute at @s if block ~0 ~ ~0 $(tree)_log run return 1

$execute at @s if block ~1 ~ ~1 $(tree)_log run tp @s ~1 ~ ~1
$execute at @s if block ~0 ~ ~0 $(tree)_log run return 1
$execute at @s if block ~1 ~ ~0 $(tree)_log run tp @s ~1 ~ ~0
$execute at @s if block ~0 ~ ~0 $(tree)_log run return 1
$execute at @s if block ~1 ~ ~-1 $(tree)_log run tp @s ~1 ~ ~-1
$execute at @s if block ~0 ~ ~0 $(tree)_log run return 1

$execute at @s if block ~0 ~ ~1 $(tree)_log run tp @s ~0 ~ ~1
$execute at @s if block ~0 ~ ~0 $(tree)_log run return 1
$execute at @s if block ~0 ~ ~-1 $(tree)_log run tp @s ~0 ~ ~-1
$execute at @s if block ~0 ~ ~0 $(tree)_log run return 1

$execute at @s if block ~-1 ~ ~1 $(tree)_log run tp @s ~-1 ~ ~1
$execute at @s if block ~0 ~ ~0 $(tree)_log run return 1
$execute at @s if block ~-1 ~ ~0 $(tree)_log run tp @s ~-1 ~ ~0
$execute at @s if block ~0 ~ ~0 $(tree)_log run return 1
$execute at @s if block ~-1 ~ ~-1 $(tree)_log run tp @s ~-1 ~ ~-1
$execute at @s if block ~0 ~ ~0 $(tree)_log run return 1