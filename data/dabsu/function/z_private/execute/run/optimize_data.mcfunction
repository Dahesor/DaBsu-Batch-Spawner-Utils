execute if score %has_error calc.dabsu matches 1.. as @a run function dabsu:z_private/text/tellraw_self {text:{text:"optimize_failed",color:"red"}}
execute if score %has_error calc.dabsu matches 1.. run return run data remove storage dabsu:run Dimensions[].Chunks[].Objects[].mark
data remove storage dabsu:run Dimensions[].Chunks[].Objects[{mark:0b}]
data remove storage dabsu:run Dimensions[].Chunks[].Objects[].mark
data modify storage dabsu:run Dimensions[].Chunks[].mark set value 0b
data modify storage dabsu:run Dimensions[].Chunks[{Objects:[{Pos:{}}]}].mark set value 1b
data remove storage dabsu:run Dimensions[].Chunks[{mark:0b}]
data remove storage dabsu:run Dimensions[].Chunks[].mark