scoreboard players operation #count calc.dabsu = run.SelectionRate Option.dabsu
data modify storage dabsu:run run set value {UUID:""}
function dabsu:z_private/mod/buffer_select/run

execute unless data storage dabsu:run buffer[0] run return run function dabsu:z_private/mod/buffer_select/finished

execute store result score $progress calc.dabsu run bossbar get dabsu:select value
scoreboard players operation $progress calc.dabsu += run.SelectionRate Option.dabsu
execute store result bossbar dabsu:select value run scoreboard players get $progress calc.dabsu
bossbar set dabsu:select name ["",{text:"[DaBsu] ",color:"gray"},{text:"Selecting... ",color:"green"},"(",{score:{name:"$progress",objective:"calc.dabsu"},color:"yellow"}," finished)"]
