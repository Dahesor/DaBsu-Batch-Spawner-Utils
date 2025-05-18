$data modify storage dabsu:run run set from storage dabsu:run Dimensions[0].Chunks[0].Objects[{UUID:$(UUID)}]
$data remove storage dabsu:run Dimensions[0].Chunks[0].Objects[{UUID:$(UUID)}]
data modify storage dabsu:run Dimensions[0].Chunks[0].Objects prepend from storage dabsu:run run
data remove storage dabsu:run run