# Set the Delay tag of all selected spawners to 2t. This cause them to imimediately attempt a spawn when a player comes close.
# 将所有选定的刷怪笼的延迟标签设置为2t。这会导致它们在玩家靠近时立即尝试生成

execute unless data storage dabsu:run Selected[].Chunks[].Objects[].sUUID run return run function dabsu:z_private/text/tellraw_self {text:{text:"selection_missing",color:"red"}}

data modify storage dabsu:run exe.command set value "data modify block ~ ~ ~ Delay set value 2s"
function dabsu:z_private/execute/custom