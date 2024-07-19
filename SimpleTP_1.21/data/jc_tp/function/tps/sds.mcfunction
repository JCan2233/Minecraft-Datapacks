summon minecraft:marker ~ ~ ~ {Tags:["jc_dimension_tag"]}
execute store result score @e[tag=jc_dimension_tag,distance=0..1,sort=nearest,limit=1] jc_dimid run scoreboard players get system jc_dimid
scoreboard players add system jc_dimid 1