execute unless data storage dabsu:run ram[0].in run return fail

data modify storage dabsu:run Selected prepend value {}
data modify storage dabsu:run Selected[0].in set from storage dabsu:run ram[0].in
data modify storage dabsu:run Selected[0].Chunks set value []

function dabsu:z_private/select/type/loop_chunk

execute unless data storage dabsu:run Selected[0].Chunks[].Objects[].sUUID run data remove storage dabsu:run Selected[0]

data remove storage dabsu:run ram[0]
function dabsu:z_private/select/type/loop_dimension