execute if data storage dabsu:run {id:""} run return fail
data modify storage dabsu:run char.co set string storage dabsu:run id 0 1
execute if data storage dabsu:run char{co:":"} run return 1
data modify storage dabsu:run id set string storage dabsu:run id 1
return run function dabsu:z_private/placed/default/find_coloum