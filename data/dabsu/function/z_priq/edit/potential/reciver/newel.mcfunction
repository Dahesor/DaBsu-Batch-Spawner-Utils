function dabsu:z_private_d/uid/get
$data modify storage dabsu:user data[0].form set value $(form)

data modify storage dnt:ram in set value []
data modify storage dnt:ram in append from storage dabsu:user data[0].form.data.entity
function dnt:remove_newline
data modify storage dabsu:user data[0].form.data.entity set from storage dnt:ram out

function dabsu:z_priq/edit/potential/parser/get_new_element with storage dabsu:user data[0].form.data

data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/edit/potential/new"}
data modify storage dabsu:run proceed merge from storage dabsu:user data[0].editing
function dabsu:z_priq/edit/exe with storage dabsu:run proceed