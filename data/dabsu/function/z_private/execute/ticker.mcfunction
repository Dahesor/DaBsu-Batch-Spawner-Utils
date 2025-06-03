scoreboard players add %time_cost calc.dabsu 1
scoreboard players operation %allowed_chunks calc.dabsu = run.ChunkReadingRate Option.dabsu

execute unless data storage dabsu:run parsing.chunk[0] unless data storage dabsu:run parsing.buffer[0] if data storage dabsu:run parsing.dimension[0] run function dabsu:z_private/execute/next_dimension

execute unless data storage dabsu:run parsing.chunk[0] unless data storage dabsu:run parsing.dimension[0] unless data storage dabsu:run parsing.buffer[0] run return run function dabsu:z_private/execute/completed
data modify storage dabsu:run xz set value {x:0,z:0}

data modify storage dabsu:run this.buffer set from storage dabsu:run parsing.buffer
data modify storage dabsu:run parsing.buffer set value []
data modify storage dabsu:run in set from storage dabsu:run this.dimension.in

execute if data storage dabsu:run this.buffer[0] run function dabsu:z_private/execute/macro/__to_dimension_parse with storage dabsu:run this.dimension
execute if data storage dabsu:run parsing.chunk[0] run function dabsu:z_private/execute/macro/__to_dimension_load with storage dabsu:run this.dimension
bossbar set dabsu:modify name [{text:"",shadow_color:1},{text:"Modifying...",color:"red"}," ",{text:"Chunks: (",color:"dark_green",extra:[{score:{name:"%completed_chunks",objective:"calc.dabsu"},color:"green",bold:true},"/",{score:{name:"%total_chunks",objective:"calc.dabsu"}},")"]}," ",{text:"Objs: (",color:"dark_aqua",extra:[{score:{name:"%completed_obj",objective:"calc.dabsu"},color:"aqua",bold:true},"/",{score:{name:"%total_obj",objective:"calc.dabsu"}},")"]}]
execute store result bossbar dabsu:modify value run scoreboard players get %completed_obj calc.dabsu