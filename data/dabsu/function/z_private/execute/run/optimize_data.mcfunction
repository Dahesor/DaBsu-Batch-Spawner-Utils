data remove storage dabsu:run Dimensions[].Chunks[].Objects[{mark:0b}]
data remove storage dabsu:run Dimensions[].Chunks[].Objects[].mark
data modify storage dabsu:run Dimensions[].Chunks[].mark set value 0b
data modify storage dabsu:run Dimensions[].Chunks[{Objects:[{Pos:{}}]}].mark set value 1b
data remove storage dabsu:run Dimensions[].Chunks[{mark:0b}]
data remove storage dabsu:run Dimensions[].Chunks[].mark