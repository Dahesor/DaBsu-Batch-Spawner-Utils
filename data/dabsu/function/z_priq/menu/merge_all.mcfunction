function dabsu:z_private/text/get
function dabsu:z_private_d/templates/edit/multi_merge

data modify storage dabsu:run dialog.dialog.body set value [{type:"plain_message",contents:"§dQuick Edit: Merge NBT",width:400},{type:"plain_message",contents:"Leave any input to §a\"{}\"§r to not change it.",width:400}]
data modify storage dabsu:run dialog.dialog.columns set value 3
data modify storage dabsu:run dialog.dialog.actions[].width set value 100

data modify storage dabsu:run dialog.dialog.actions[1].action.template set value "trigger trigger.dabsu set 102$(none)"


#Edit
data modify storage dabsu:run dialog.dialog.actions[0].action.template set value 'function dabsu:z_priq/edit/potential/reciver/merge_all {form:{entity:"$(entity)",equipment:"$(equipment)"}}'

data modify storage dabsu:run dialog.dialog.actions[-1].action.command set value "trigger trigger.dabsu set 1"

##Lang
data modify storage dabsu:run dialog.dialog.body[0].contents set from storage dabsu:run lang.this.menu_merge_all_1
data modify storage dabsu:run dialog.dialog.body[1].contents set from storage dabsu:run lang.this.menu_merge_all_2


function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog