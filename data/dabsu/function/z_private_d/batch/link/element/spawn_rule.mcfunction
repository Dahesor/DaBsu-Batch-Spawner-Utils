$data modify storage dabsu:run form set value $(form)
dialog clear @s
function dabsu:z_private_d/uid/get
data modify storage dabsu:run form.index set from storage dabsu:user data[0].editing.index

data modify storage dabsu:run run_custom.args set value {form:{}}
data modify storage dabsu:run run_custom.args.form set from storage dabsu:run form
data modify storage dabsu:run run_custom.run set value "function dabsu:z_private/modify/element/index_rules"

function dabsu:modify/use