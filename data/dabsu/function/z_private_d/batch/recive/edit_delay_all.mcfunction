execute unless score #input input.dabsu matches -32768..32767 run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §cDelay not in -32768..32767",\
    "\n - §cDelay: ",{score:{name:"#input",objective:"input.dabsu"},color:"aqua"},\
]

data modify storage dabsu:run run set value {delay:0}
execute store result storage dabsu:run run.delay int 1 run scoreboard players get #input input.dabsu
function dabsu:z_private_d/batch/recive/__delay_cmd with storage dabsu:run run