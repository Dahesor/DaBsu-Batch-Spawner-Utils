execute store result storage dabsu:run type.this int 1 run data get storage dabsu:run type.parse[0]
function dabsu:z_private/select/type/each_type with storage dabsu:run type
data remove storage dabsu:run type.parse[0]
execute if data storage dabsu:run type.parse[0] run function dabsu:z_private/select/type/each_chunk

