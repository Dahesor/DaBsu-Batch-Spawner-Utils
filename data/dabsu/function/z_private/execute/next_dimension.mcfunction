data modify storage dabsu:run this.dimension set from storage dabsu:run parsing.dimension[0]
data remove storage dabsu:run parsing.dimension[0]
data modify storage dabsu:run parsing.chunk set from storage dabsu:run this.dimension.Chunks

execute store result score #temp calc.dabsu if data storage dabsu:run this.dimension.Chunks[]
execute store result score #temp2 calc.dabsu if data storage dabsu:run this.dimension.Chunks[].Objects[]

function dabsu:z_private/text/tellraw {text:{text:"batch_edit_dimension",color:"gray"}}
tellraw @a [{storage:"dabsu:run",nbt:"text",interpret:true},{nbt:"this.dimension.in",storage:"dabsu:run"}]

function dabsu:z_private/text/tellraw {text:{text:"batch_edit_chunks",color:"gray"}}
tellraw @a [{storage:"dabsu:run",nbt:"text",interpret:true},{score:{name:"#temp",objective:"calc.dabsu"},color:"aqua"}]

function dabsu:z_private/text/tellraw {text:{text:"batch_edit_objs",color:"gray"}}
tellraw @a [{storage:"dabsu:run",nbt:"text",interpret:true},{score:{name:"#temp2",objective:"calc.dabsu"},color:"green"}]