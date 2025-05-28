dialog clear @s
data modify storage dabsu:run run_custom.args set value {form:{}}
$data modify storage dabsu:run run_custom.args.form set value $(form)
data modify storage dabsu:run run_custom.run set value "function dabsu:z_private/modify/multipot/merge"

function dabsu:modify/use