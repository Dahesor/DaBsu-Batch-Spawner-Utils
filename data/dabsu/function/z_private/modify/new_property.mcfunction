$data modify storage dabsu:run form set value $(data)

execute if data storage dabsu:run form{index:"adjust"} run return run function dabsu:z_private/modify/adjust_property

data remove storage dabsu:run form.index
data modify block ~ ~ ~ {} merge from storage dabsu:run form

function dabsu:z_private/modify/property_change