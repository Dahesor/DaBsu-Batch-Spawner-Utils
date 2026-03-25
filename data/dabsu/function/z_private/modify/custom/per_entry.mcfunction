data modify storage dabsu:var data set from storage dabsu:run stack[0].data.entry[0]
function dabsu:z_private/modify/custom/__run_line with storage dabsu:run stack[0].data
data modify storage dabsu:run stack[0].data.entry append from storage dabsu:var data
data remove storage dabsu:run stack[0].data.entry[0]

scoreboard players remove $t calc.dabsu 1
execute if score $t calc.dabsu matches 1.. run function dabsu:z_private/modify/custom/per_entry