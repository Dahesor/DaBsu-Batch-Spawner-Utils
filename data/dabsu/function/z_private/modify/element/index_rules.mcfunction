$data modify storage dabsu:run form set value $(form)

execute if data storage dabsu:run form{use:0} run function dabsu:z_private/modify/element/__index_light_remove with storage dabsu:run form
execute if data storage dabsu:run form{use:1} run function dabsu:z_private/modify/element/__index_light with storage dabsu:run form

function dabsu:z_private/modify/update_self