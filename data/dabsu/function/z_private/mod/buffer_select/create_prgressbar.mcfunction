bossbar add dabsu:select ""
execute store result bossbar dabsu:select max run scoreboard players get #count calc.dabsu
bossbar set dabsu:select name ["",{text:"[DaBsu] ",color:"gray"},{text:"Selecting... ",color:"green"},"(",{score:{name:"$progress",objective:"calc.dabsu"},color:"yellow"}," finished)"]
bossbar set dabsu:select players @a
bossbar set dabsu:select color green
bossbar set dabsu:select style progress
bossbar set dabsu:select visible false
bossbar set dabsu:select visible true