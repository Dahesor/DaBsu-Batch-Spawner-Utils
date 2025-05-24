execute if score #mode calc.dabsu matches 0 run function dabsu:z_private/select/__remove_data with storage dabsu:run result[0].Chunks[0].Objects[0]
execute if score #mode calc.dabsu matches 1 run function dabsu:z_private/select/modify/__mark_entry with storage dabsu:run result[0].Chunks[0].Objects[0]

data remove storage dabsu:run result[0].Chunks[0].Objects[0]
execute if data storage dabsu:run result[0].Chunks[0].Objects[0] run function dabsu:z_private/select/modify/loop_oj