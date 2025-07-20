function dabsu:z_private/text/tellraw {text:{text:"batch_edit_dimension",color:"gray"}}
tellraw @s [{storage:"dabsu:run",nbt:"text",interpret:true},{nbt:"this.dimension.in",storage:"dabsu:run"}]

function dabsu:z_private/text/tellraw {text:{text:"batch_edit_chunks",color:"gray"}}
tellraw @s [{storage:"dabsu:run",nbt:"text",interpret:true},{score:{name:"#temp",objective:"calc.dabsu"},color:"aqua"}]

function dabsu:z_private/text/tellraw {text:{text:"batch_edit_objs",color:"gray"}}
tellraw @s [{storage:"dabsu:run",nbt:"text",interpret:true},{score:{name:"#temp2",objective:"calc.dabsu"},color:"green"}]