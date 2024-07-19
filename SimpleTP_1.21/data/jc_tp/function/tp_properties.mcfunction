#维度设定
#如果有新的维度，则添加新的一行execute in <维度名称> run function jc_tp:tps/fl
#维度名称需要添加命名空间
#游戏内op输入/execute in 查看自动补全指令，即可获取维度信息
#主世界minecraft:overworld无需添加
#默认已添加原版和JC数据包系列的所有维度
#如果不添加，则每当服务器或游戏重启，在其他维度的传送点会暂时失效，直到有玩家进入该维度
execute in minecraft:overworld run function jc_tp:tps/fl
execute in minecraft:the_nether run function jc_tp:tps/fl
execute in minecraft:the_end run function jc_tp:tps/fl
execute in jc:world run function jc_tp:tps/fl
execute in jc:nether run function jc_tp:tps/fl
execute in jc:end run function jc_tp:tps/fl
execute in jc:flat run function jc_tp:tps/fl
#execute in <维度名称> run function jc_tp:tps/fl
#