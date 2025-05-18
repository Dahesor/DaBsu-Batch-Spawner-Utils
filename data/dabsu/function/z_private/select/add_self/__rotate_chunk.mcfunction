$data modify storage dabsu:run run set from storage dabsu:run Selected[0].Chunks[{x:$(x),z:$(z)}]
$data remove storage dabsu:run Selected[0].Chunks[{x:$(x),z:$(z)}]
data modify storage dabsu:run Selected[0].Chunks prepend from storage dabsu:run run
data remove storage dabsu:run run