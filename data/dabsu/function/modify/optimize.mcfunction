execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy

tag @a remove dabsu.quick_edit
tag @e[type=marker,tag=dabsu.marker,tag=dabsu.quick_edit] remove dabsu.quick_edit
kill @e[type=#dabsu:display,tag=dabsu.displayer]

function dabsu:select/empty
data modify storage dabsu:run potential set value [{Potential:[],type:0}]
scoreboard players set #pTypes calc.dabsu 0
data modify storage dabsu:run exe set value {}
data modify storage dabsu:run Dimensions[].Chunks[].Objects[].mark set value 0b
data modify storage dabsu:run exe.command set value 'function dabsu:z_private/modify/optimizer'
data modify storage dabsu:run exe.work_type set value "optimize"
data modify storage dabsu:run exe.args set value "NONE"

scoreboard players set !busy calc.dabsu 1
function dabsu:z_private/execute/optimize