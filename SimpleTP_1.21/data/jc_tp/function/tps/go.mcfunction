data modify entity @s Pos set from storage minecraft:jc_tp_temp Pos
execute at @s run tp @a[tag=jc_tp_temp] ~0.5 ~0.5 ~0.5
kill @s