function dabsu:z_private_d/templates/edit/multi_merge

data modify storage dabsu:run dialog.dialog.body set value [{type:"plain_message",contents:"§dQuick Edit: Merge NBT",width:400},{type:"plain_message",contents:"Leave any input to §a\"{}\"§r to not change it.",width:400}]
data modify storage dabsu:run dialog.dialog.columns set value 3
data modify storage dabsu:run dialog.dialog.actions[].width set value 100

data modify storage dabsu:run dialog.dialog.actions[1].on_submit.template set value "trigger trigger.dabsu set 102$(none)"


#Edit
data modify storage dabsu:run dialog.dialog.actions[0].on_submit.template set value 'function dabsu:z_priq/edit/potential/reciver/merge_all {form:{entity:$(entity),equipment:$(equipment)}}'

#Edit All
data modify storage dabsu:run dialog.dialog.actions insert 1 value {id:"edit_potential",label:{text:"Edit Same Potentials",color:"yellow"},on_submit:{type:"command_template",template:'function dabsu:z_priq/edit/potential/merge_all_publish {form:{entity:$(entity),equipment:$(equipment)}}'}}

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog