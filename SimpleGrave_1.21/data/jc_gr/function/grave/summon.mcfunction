summon minecraft:marker ~ ~ ~ {data:{Inventory:[]},Tags:["jc_temp","jc_grave"]}
data modify entity @e[tag=jc_temp,sort=nearest,limit=1] data.Inventory set from entity @s Inventory
execute store result entity @e[tag=jc_temp,sort=nearest,limit=1] data.exp int 7 run experience query @s levels
experience set @s 0 levels
experience set @s 0 points
clear @s
tag @e[tag=jc_temp,sort=nearest,limit=1] remove jc_temp
setblock ~ ~ ~ minecraft:decorated_pot[cracked=true]{sherds:["minecraft:air","minecraft:air","minecraft:air","minecraft:air"]} destroy