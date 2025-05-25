execute unless data storage dabsu:run type.list[0] run return fail
data modify storage dabsu:run type merge value {this:-1}

execute if data storage dabsu:run type.list[1] run scoreboard players set $SelectedType selected.dabsu -1
execute store result score $ThisType selected.dabsu run data get storage dabsu:run type.list[0]
execute unless data storage dabsu:run type.list[1] run function dabsu:z_private/select/if_same_type

function dabsu:z_private/select/type/expand