data modify storage dabsu:run buffer set value []
data modify storage dabsu:run buffer append from storage dabsu:run Selected[].Chunks[].Objects[].sUUID

execute store result score #count calc.dabsu if data storage dabsu:run buffer[]
execute unless score #count calc.dabsu matches 1.. run return fail

execute as @a run function dabsu:z_private/text/tellraw_self {text:{text:"selecting",color:"gray",extra:[{score:{objective:"calc.dabsu",name:"#count"}}]}}

scoreboard players set $progress calc.dabsu 0
execute if score #count calc.dabsu matches 1001.. run function dabsu:z_private/mod/buffer_select/create_prgressbar

scoreboard players set $selecting calc.dabsu 1
return 1
