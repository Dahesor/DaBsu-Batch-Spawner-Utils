tellraw @a ["§c[DaBsu] Error: Time Out: Cannot load chunk(s)"]
tellraw @a ["§6  Dimension: ",{storage:"dabsu:run",nbt:"in"}]
execute if data storage dabsu:run parsing.buffer[0] run function dabsu:z_private/execute/output/time_out_entry
scoreboard players reset %affected calc.dabsu
tellraw @a [{text:"DaBsu was unable to forceload these chunks.\n  - They could be un-forceloaded by other processes,\n     or something else is wrong with them.\n  - Any spawners within these chunks were not edited.",color:"red"}]
scoreboard players set %last_load calc.dabsu 0
scoreboard players set %has_error calc.dabsu 1