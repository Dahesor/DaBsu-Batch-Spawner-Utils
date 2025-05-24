data modify storage dabsu:run Selected set value []
data modify storage dabsu:run ram set from storage dabsu:run Dimensions
execute if data storage dabsu:run ram[0] run function dabsu:z_private/select/type/loop_dimension
data modify storage dabsu:run ram set value []