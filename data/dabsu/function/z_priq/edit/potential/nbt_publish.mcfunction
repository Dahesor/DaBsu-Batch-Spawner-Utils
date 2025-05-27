data modify storage dabsu:run form set from storage dabsu:user data[0].form
data modify storage dabsu:run form.form set from storage dabsu:run form

data modify storage dabsu:run run_custom set value {}
data modify storage dabsu:run run_custom.run set value "function dabsu:z_private/modify/multipot/rewrite_nbt"
data modify storage dabsu:run run_custom.args set from storage dabsu:run form

function dabsu:z_priq/selected/update/entry
data modify storage dabsu:run type.list set value []
data modify storage dabsu:run type.list append from storage dabsu:user data[0].target.type
function dabsu:z_priq/edit/que_api