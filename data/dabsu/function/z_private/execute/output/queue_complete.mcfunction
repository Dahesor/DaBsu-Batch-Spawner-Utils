function dabsu:z_private/text/tellraw {text:{text:"quick_edit_complete",color:"gray"}}
tellraw @s [{storage:"dabsu:run",nbt:"text",interpret:true},{score:{name:"%time_cost",objective:"calc.dabsu"},color:"yellow"},"t"]
execute if score %failed_obj calc.dabsu matches 1.. run tellraw @a ["§6[DaBsu] Warning: ",{score:{name:"%failed_obj",objective:"calc.dabsu"},color:"aqua"},"§c object(s) could not be edited. Check logs above."]
