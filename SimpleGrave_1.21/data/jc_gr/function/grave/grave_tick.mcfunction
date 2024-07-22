particle minecraft:end_rod ~ ~ ~ 0.01 12 0.01 0 4 normal @a[scores={showGrave=1..}]
particle minecraft:composter ~ ~ ~ 0.3 0.3 0.3 0 1 normal @a[scores={showGrave=1..}]
execute if entity @p[distance=..8] if block ~ ~ ~ #jc_gr:grave_air run function jc_gr:grave/break