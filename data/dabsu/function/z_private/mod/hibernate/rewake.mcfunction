data modify storage dabsu:run Selected set value []
scoreboard players reset * selected.dabsu

data modify storage dabsu:run potential set value [{Potential:[],type:0}]
scoreboard players set #pTypes calc.dabsu 0
data modify storage dabsu:run exe set value {}
data modify storage dabsu:run Selected set from storage dabsu:run Dimensions
data modify storage dabsu:run Dimensions set value []
data modify storage dabsu:run exe.command set value 'function dabsu:z_private/modify/sleep/restart_this'
data modify storage dabsu:run exe.work_type set value "restart"
data modify storage dabsu:run exe.args set value "NONE"
data modify storage dabsu:run exe.operator set value "SYSTEM"
scoreboard players set $recorded calc.dabsu 0
scoreboard players set !busy calc.dabsu 1
function dabsu:z_private/execute/optimize