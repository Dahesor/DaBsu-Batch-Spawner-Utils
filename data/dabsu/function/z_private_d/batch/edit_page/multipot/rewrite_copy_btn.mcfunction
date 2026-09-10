data modify storage dabsu:run dialog.dialog.actions[].width set value 130
data modify storage dabsu:run dialog.dialog.actions insert 1 value {label:{translate:"chat.copy"},tooltip:{translate:"chat.copy.click"},action:{type:"copy_to_clipboard",value:""},width:110}
data modify storage dabsu:run dialog.dialog.actions[1].action.value set from storage dnt:ram out
data modify storage dabsu:run dialog.dialog.columns set value 3