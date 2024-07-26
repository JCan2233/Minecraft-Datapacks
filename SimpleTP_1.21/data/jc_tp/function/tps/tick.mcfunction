execute at @a positioned 1653504 0 6264576 run function jc_tp:tps/sd

execute as @a[scores={jc_tp_d=1..}] at @s run function jc_tp:set_back
scoreboard players set @a jc_tp_d 0

scoreboard players enable @a tptag
scoreboard players enable @a tpreq
scoreboard players set @a[scores={tptag=..1}] tptag 0
scoreboard players set @a[scores={tptag=10000..}] tptag 0
execute as @a[scores={tpreq=2..9999}] at @s run function jc_tp:set_back
execute at @a run execute as @a[scores={tpreq=2..9999}] if score @s tpreq = @p tptag run tp @s ~ ~ ~
scoreboard players set @a tpreq 1

scoreboard players enable @a home
execute as @a[scores={home=1}] at @s run function jc_tp:set_back
execute as @a[scores={home=1}] at @s run function jc_tp:go_home
execute as @a[scores={home=2}] at @s run function jc_tp:set_home
scoreboard players set @a home 0

scoreboard players enable @a back
execute as @a[scores={back=1}] at @s run function jc_tp:go_back
kill @a[scores={back=2}]
scoreboard players set @a back 0

scoreboard players enable @a help
tellraw @a[scores={help=1..}] "========================================\n*JC的简易传送数据包功能列表\n*/trigger home 回家\n*/trigger home set 2 设置家\n*/trigger back 返回上一个地点\n*/trigger back set 2 自杀\n*/trigger tptag set <2~9999> 设置自己的传送编码，设为0关闭该功能\n*/trigger tpreq set <2~9999> 传送到对应编码的玩家身边\n*按Tab查看玩家列表，列表右侧的数字即为传送编码\n========================================"
scoreboard players set @a help 0

function jc_tp:tp_properties