function dabsu:z_private/text/get
function dabsu:z_private_d/templates/edit/multi_merge

data modify storage dabsu:run dialog.dialog.body set value [{type:"plain_message",contents:"§dQuick Edit: Full SpawnPotentials NBT",width:400},{type:"plain_message",contents:"This replaces the entire §dSpawnPotentials §rnbt tag with your input",width:400}]
data remove storage dabsu:run dialog.dialog.inputs[0]
data modify storage dabsu:run dialog.dialog.title set value {text:"§6[DaBsu]§r Replacing §bSpawnPotentials §rNBT..."}
data modify storage dabsu:run dialog.dialog.inputs[0].initial set value '[]'
data modify storage dabsu:run dialog.dialog.inputs[0].key set value 'tag'
data modify storage dabsu:run dialog.dialog.inputs[0].label set value '§bSNBT'
data modify storage dabsu:run dialog.dialog.inputs[0].multiline.height set value 180
data modify storage dabsu:run dialog.dialog.actions[0].action.template set value 'function dabsu:z_priq/edit/potential/reciver/nbt {form:{tag:$(tag)}}'

data modify storage dabsu:run dialog.dialog.actions[1].action.template set value "trigger trigger.dabsu set 102$(none)"
data modify storage dabsu:run dialog.dialog.columns set value 3
data modify storage dabsu:run dialog.dialog.actions[].width set value 100

data modify storage dabsu:run dialog.dialog.actions[-1].action.command set value "trigger trigger.dabsu set 1"
function dabsu:z_priq/menu/gen/get_full_nbt

##Lang
data modify storage dabsu:run dialog.dialog.title.text set from storage dabsu:run lang.this.menu_full_nbt_1
data modify storage dabsu:run dialog.dialog.body[0].contents set from storage dabsu:run lang.this.menu_full_nbt_2
data modify storage dabsu:run dialog.dialog.body[1].contents set from storage dabsu:run lang.this.menu_full_nbt_3

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog