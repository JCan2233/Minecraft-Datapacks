execute store result score temp jc_dimid run forceload query ~ ~
forceload add ~ ~
execute if score temp jc_dimid matches 1.. unless entity @e[tag=jc_dimension_tag,distance=0..1] run function jc_tp:tps/sds