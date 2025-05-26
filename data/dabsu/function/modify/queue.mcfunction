#Queued run
execute unless data storage dabsu:run Provided[].Chunks[].Objects[].sUUID run return run function dabsu:z_private/text/tellraw_self {text:{text:"selection_missing",color:"red"}}

#New Item
execute unless data storage dabsu:run Queue[0] run data modify storage dabsu:run Queue set value []
data modify storage dabsu:run Queue append value {targets:[],cmd:{args:"NONE"}}
data modify storage dabsu:run Queue[-1].targets set from storage dabsu:run Provided
data modify storage dabsu:run Provided set value []
data modify storage dabsu:run Queue[-1].cmd.run set from storage dabsu:run run_custom.run
execute if data storage dabsu:run run_custom.args run data modify storage dabsu:run Queue[-1].cmd.args set from storage dabsu:run run_custom.args

execute if score #Main calc.dabsu matches 1.. run function dabsu:z_private/text/tellraw_self {text:{text:"quick_edit_queue",color:"gray"}}
execute if score #queue calc.dabsu matches 1.. unless score #Main calc.dabsu matches 1.. run function dabsu:z_private/text/tellraw_self {text:{text:"quick_edit_queue",color:"gray"}}

#Get Operator
function gu:generate
data modify storage dabsu:run Queue[-1].operator set from storage gu:main out
scoreboard players set #queue calc.dabsu 1