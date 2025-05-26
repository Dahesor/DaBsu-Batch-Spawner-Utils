# Execute custom command at each selected spawner as their own marker
# 在所有选定的刷怪笼上以它们自己的标记执行自定义命令
execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy


execute unless data storage dabsu:run Selected[].Chunks[].Objects[].sUUID run return run function dabsu:z_private/text/tellraw_self {text:{text:"selection_missing",color:"red"}}

data modify storage dabsu:run Main set value {targets:[],cmd:{args:"NONE"}}
data modify storage dabsu:run Main.targets set from storage dabsu:run Selected
$data modify storage dabsu:run Main.cmd.run set value '$(run)'

scoreboard players set #Main calc.dabsu 1

execute unless score %modifying calc.dabsu matches 1.. run function dabsu:z_private/mod/task_manager/ticker