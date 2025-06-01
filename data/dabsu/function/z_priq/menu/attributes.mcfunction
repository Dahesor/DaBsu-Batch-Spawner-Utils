function dabsu:z_private/text/get
function dabsu:z_priq/menu/templates/attribute

#Get Element
data modify storage dabsu:run spawner set from block ~ ~ ~
function dabsu:z_priq/menu/gen/__get_ele with storage dabsu:user data[0].editing

execute if data storage dabsu:run element.data.entity.attributes run function dabsu:z_priq/menu/gen/att_initial
function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog