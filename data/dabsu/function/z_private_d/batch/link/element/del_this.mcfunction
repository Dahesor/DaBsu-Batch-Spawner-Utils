#send edits
function dabsu:z_private_d/uid/get
data modify storage dabsu:run run_custom.args set value {form:{index:0}}
data modify storage dabsu:run run_custom.args.form.index set from storage dabsu:user data[0].editing.index
data modify storage dabsu:run run_custom.run set value "function dabsu:z_private/modify/element/del_this"
function dabsu:modify/use