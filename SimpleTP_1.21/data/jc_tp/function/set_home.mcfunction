execute store result score @s jc_home_x run data get entity @s Pos[0]
execute store result score @s jc_home_y run data get entity @s Pos[1]
execute store result score @s jc_home_z run data get entity @s Pos[2]
execute positioned 1653500 0 6265200 run scoreboard players operation @s jc_home_d = @e[tag=jc_dimension_tag,distance=0..1,sort=nearest,limit=1] jc_dimid