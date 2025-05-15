scoreboard players set %using_bossbar calc.dabsu 1
bossbar remove dabsu:modify
bossbar add dabsu:modify ""
bossbar set dabsu:modify color yellow
bossbar set dabsu:modify style progress
execute store result bossbar dabsu:modify max run scoreboard players get %total_obj calc.dabsu
bossbar set dabsu:modify name [{text:"",shadow_color:1},{text:"Modifying...",color:"red"}," ",{text:"Chunks: (",color:"dark_green",extra:[{score:{name:"%completed_chunks",objective:"calc.dabsu"},color:"green",bold:true},"/",{score:{name:"%total_chunks",objective:"calc.dabsu"}},")"]}," ",{text:"Objs: (",color:"dark_aqua",extra:[{score:{name:"%completed_obj",objective:"calc.dabsu"},color:"aqua",bold:true},"/",{score:{name:"%total_obj",objective:"calc.dabsu"}},")"]}]
bossbar set dabsu:modify players @a
bossbar set dabsu:modify visible false
bossbar set dabsu:modify visible true