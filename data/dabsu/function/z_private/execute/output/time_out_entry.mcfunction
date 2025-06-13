execute store result score %affected calc.dabsu if data storage dabsu:run parsing.buffer[0].Objects[]
tellraw @a ["§c  - at Chunk Coord: [",{storage:"dabsu:run",nbt:"parsing.buffer[0].x"},"§c, ",{storage:"dabsu:run",nbt:"parsing.buffer[0].z"},"§c] With ",{score:{name:"%affected",objective:"calc.dabsu"},color:"aqua"},"§c objects;"]
scoreboard players add %failed_obj calc.dabsu 1
data remove storage dabsu:run parsing.buffer[0]
execute if data storage dabsu:run parsing.buffer[0] run function dabsu:z_private/execute/output/time_out_entry