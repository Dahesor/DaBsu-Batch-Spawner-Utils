function dabsu:z_private/text/get
function dabsu:z_private_d/templates/confirm
data modify storage dabsu:run dialog.dialog.body set value [{contents:"§c§lAbout to Overwrite Privieous Edit",type:"plain_message"},{contents:"§lThere is already an ongoing edit",type:"plain_message"},{contents:"You will very likely replace th",type:"plain_message"}]
data modify storage dabsu:run dialog.dialog.yes set value {label:{translate:"selectWorld.backupJoinSkipButton"}}

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog