execute unless data storage dabsu:run ram[0].Chunks[0] run return fail

data modify storage dabsu:run Selected[0].Chunks prepend from storage dabsu:run ram[0].Chunks[0]
data remove storage dabsu:run Selected[0].Chunks[0].Objects[]

function dabsu:z_private/select/type/each_chunk with storage dabsu:run type

execute unless data storage dabsu:run Selected[0].Chunks[0].Objects[].sUUID run data remove storage dabsu:run Selected[0].Chunks[0]

data remove storage dabsu:run ram[0].Chunks[0]
function dabsu:z_private/select/type/loop_chunk