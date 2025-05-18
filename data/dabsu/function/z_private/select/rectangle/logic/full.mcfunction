

data modify storage dabsu:run Selected[0].Chunks prepend from storage dabsu:run Chunks[0]
data modify storage dabsu:run Selected[0].Chunks[0].Objects set value []
#tellraw @a {nbt:"Selected",storage:"dabsu:run"}
function dabsu:z_private/select/rectangle/logic/cases/fulls
execute unless data storage dabsu:run Selected[0].Chunks[0].Objects[0] run data remove storage dabsu:run Selected[0].Chunks[0]
