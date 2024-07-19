tag @s add jc_tp_temp
data merge storage minecraft:jc_tp_temp {Pos:[0.0d,70.0d,0.0d]}
scoreboard players operation temp jc_dimid = @s jc_home_d
execute store result storage minecraft:jc_tp_temp Pos[0] double 1 run scoreboard players get @s jc_home_x
execute store result storage minecraft:jc_tp_temp Pos[1] double 1 run scoreboard players get @s jc_home_y
execute store result storage minecraft:jc_tp_temp Pos[2] double 1 run scoreboard players get @s jc_home_z
execute as @e[tag=jc_dimension_tag] at @s run function jc_tp:tps/su
execute as @e[tag=jc_tp_temp_tag] run function jc_tp:tps/go
tag @s remove jc_tp_temp