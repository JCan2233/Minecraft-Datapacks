execute if entity @s[nbt={data:{Inventory:[{}]}}] run function jc_gr:grave/break_loop
execute store result score temp jc_gr_d run data get entity @s data.exp
execute if score temp jc_gr_d matches 101.. run scoreboard players set temp jc_gr_d 100
execute if score temp jc_gr_d matches 1.. run summon minecraft:experience_orb ~ ~ ~ {Value:1,Tags:["jc_temp"]}
execute if score temp jc_gr_d matches 1.. run execute store result entity @e[tag=jc_temp,sort=nearest,limit=1] Value int 1 run data get entity @s data.exp
tag @e[tag=jc_temp,sort=nearest,limit=1] remove jc_temp
kill @s