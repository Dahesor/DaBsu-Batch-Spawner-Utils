scoreboard players set !busy calc.dabsu 1

function dabsu:select/empty
data modify storage dabsu:run potential set value [{Potential:[],type:0}]
scoreboard players set #pTypes calc.dabsu 0
data modify storage dabsu:run exe set value {}
data modify storage dabsu:run exe.command set value 'function dabsu:z_private/modify/sleep/sleep'
data modify storage dabsu:run exe.work_type set value "sleep"
data modify storage dabsu:run exe.args set value "NONE"
function dabsu:z_private/execute/optimize