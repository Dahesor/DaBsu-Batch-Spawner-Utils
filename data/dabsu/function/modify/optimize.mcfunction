execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy

function dabsu:select/empty
data modify storage dabsu:run potential set value [{Potential:[],type:0}]
scoreboard players set #pTypes calc.dabsu 0
data modify storage dabsu:run exe.command set value 'function dabsu:z_private/modify/optimizer'

scoreboard players set !busy calc.dabsu 1
function dabsu:z_private/execute/optimize