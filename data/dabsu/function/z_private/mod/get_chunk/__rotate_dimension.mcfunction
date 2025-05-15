$data modify storage dabsu:run run set from storage dabsu:run Dimensions[{in:"$(in)"}]
$data remove storage dabsu:run Dimensions[{in:"$(in)"}]
data modify storage dabsu:run Dimensions prepend from storage dabsu:run run
data remove storage dabsu:run run