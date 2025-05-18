# Execute custom command at each selected spawner as their own marker
# 在所有选定的刷怪笼上以它们自己的标记执行自定义命令

execute unless data storage dabsu:run Selected[].Chunks[].Objects[].sUUID run return run function dabsu:z_private/text/tellraw_self {text:{text:"selection_missing",color:"red"}}

$data modify storage dabsu:run exe.command set value '$(run)'
function dabsu:z_private/execute/custom