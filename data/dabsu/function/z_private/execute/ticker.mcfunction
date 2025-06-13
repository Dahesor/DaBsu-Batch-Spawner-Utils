#Update Time and Allow more chunks
scoreboard players add %time_cost calc.dabsu 1
scoreboard players operation %allowed_chunks calc.dabsu = run.ChunkReadingRate Option.dabsu

#Check for next dimension
execute unless data storage dabsu:run parsing.chunk[0] unless data storage dabsu:run parsing.buffer[0] if data storage dabsu:run parsing.dimension[0] run function dabsu:z_private/execute/next_dimension

#Check if completed
execute unless data storage dabsu:run parsing.chunk[0] unless data storage dabsu:run parsing.dimension[0] unless data storage dabsu:run parsing.buffer[0] run return run function dabsu:z_private/execute/completed

#Initialize variables
data modify storage dabsu:run xz set value {x:0,z:0}
data modify storage dabsu:run this.buffer set from storage dabsu:run parsing.buffer
data modify storage dabsu:run parsing.buffer set value []
data modify storage dabsu:run in set from storage dabsu:run this.dimension.in

#Run chunk reading and stuck detection
scoreboard players set %progressed calc.dabsu 0
execute if data storage dabsu:run this.buffer[0] run function dabsu:z_private/execute/macro/__to_dimension_parse with storage dabsu:run this.dimension
execute if score %progressed calc.dabsu matches 0 run scoreboard players add %last_load calc.dabsu 1
execute unless score %progressed calc.dabsu matches 0 run scoreboard players set %last_load calc.dabsu 0
execute if score %last_load calc.dabsu matches 60.. run function dabsu:z_private/execute/output/timeout

#Load More Chunks
execute if data storage dabsu:run parsing.chunk[0] run function dabsu:z_private/execute/macro/__to_dimension_load with storage dabsu:run this.dimension

#Update Bossbar
bossbar set dabsu:modify name [{text:"",shadow_color:1},{text:"Modifying...",color:"red"}," ",{text:"Chunks: (",color:"dark_green",extra:[{score:{name:"%completed_chunks",objective:"calc.dabsu"},color:"green",bold:true},"/",{score:{name:"%total_chunks",objective:"calc.dabsu"}},")"]}," ",{text:"Objs: (",color:"dark_aqua",extra:[{score:{name:"%completed_obj",objective:"calc.dabsu"},color:"aqua",bold:true},"/",{score:{name:"%total_obj",objective:"calc.dabsu"}},")"]}]
execute store result bossbar dabsu:modify value run scoreboard players get %completed_obj calc.dabsu