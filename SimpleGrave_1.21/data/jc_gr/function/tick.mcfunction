gamerule keepInventory true
execute as @a[scores={jc_gr_d=1..}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function jc_gr:grave/death
execute as @e[type=minecraft:marker,tag=jc_grave] at @s run function jc_gr:grave/grave_tick