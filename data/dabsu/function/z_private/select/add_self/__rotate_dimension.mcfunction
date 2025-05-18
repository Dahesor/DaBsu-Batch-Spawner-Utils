$data modify storage dabsu:run run set from storage dabsu:run Selected[{in:"$(in)"}]
$data remove storage dabsu:run Selected[{in:"$(in)"}]
data modify storage dabsu:run Selected prepend from storage dabsu:run run
data remove storage dabsu:run run