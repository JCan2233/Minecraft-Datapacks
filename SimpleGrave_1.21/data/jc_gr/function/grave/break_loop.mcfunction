summon minecraft:item ~ ~ ~ {Tags:["jc_temp"],Item:{id:"minecraft:grass_block",count:1b}}
data modify entity @e[tag=jc_temp,sort=nearest,limit=1] Item.id set from entity @s data.Inventory[0].id
data modify entity @e[tag=jc_temp,sort=nearest,limit=1] Item.count set from entity @s data.Inventory[0].count
data modify entity @e[tag=jc_temp,sort=nearest,limit=1] Item.components set from entity @s data.Inventory[0].components
tag @e[tag=jc_temp,sort=nearest,limit=1] remove jc_temp
data remove entity @s data.Inventory[0]
execute if entity @s[nbt={data:{Inventory:[{}]}}] run function jc_gr:grave/break_loop