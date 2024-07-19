scoreboard players set @s jc_gr_d 0
execute if predicate jc_gr:in_void_0 run execute positioned ~ 0.5 ~ run function jc_gr:grave/summon
execute if predicate jc_gr:in_void_64 run execute positioned ~ -63.5 ~ run function jc_gr:grave/summon
execute if predicate jc_gr:not_in_void run function jc_gr:grave/summon