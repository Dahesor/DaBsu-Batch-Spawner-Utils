dialog clear @s

$data modify storage dabsu:run form set value $(form)

data modify storage dnt:ram in set value []
data modify storage dnt:ram in append from storage dabsu:run form.entity
function dnt:remove_newline
data modify storage dabsu:run form.entity set from storage dnt:ram out

function dabsu:z_private_d/batch/read/element_input with storage dabsu:run form

data modify storage dabsu:run run_custom.args set value {form:{}}
data modify storage dabsu:run run_custom.args.form set from storage dabsu:run form



data modify storage dabsu:run run_custom.run set value "function dabsu:z_private/modify/multipot/merge"

function dabsu:modify/use