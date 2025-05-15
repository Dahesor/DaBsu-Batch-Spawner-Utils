# Copies the spawner looking at as an item, and give it to the executor
# 将玩家指向的刷怪笼复制为物品，并给予执行者

scoreboard players set $ray calc.dabsu 1
execute at @s anchored eyes run function dabsu:z_private/mod/raycast/percise