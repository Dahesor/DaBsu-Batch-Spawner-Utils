data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:[{text:"§6[DaBsu]§r Select Potential..."}],\
    columns:3,\
    actions:[\
        {label:{text:"Light Limit...",color:"#a4fdff"},width:100,tooltip:"Overwrite sky and block light limit for all potentials",on_click:{action:"run_command",command:"/trigger trigger.dabsu set 190"}},\
        {label:{text:"Merge to All...",color:"#ffc575"},width:100,tooltip:"Merge a SNBT to every spawn entry",on_click:{action:"run_command",command:"/trigger trigger.dabsu set 191"}},\
        {label:{text:"Edit Full NBT...",color:"#ffa4a4"},width:100,tooltip:"Edit the §7SpawnPotentials§r key as a whole",on_click:{action:"run_command",command:"/trigger trigger.dabsu set 192"}},\
        {label:{text:"[+]",color:"green",bold:true},width:90,tooltip:"Append a new potential",on_click:{action:"run_command",command:"/trigger trigger.dabsu set 104"}},\
    ]\
}

return 1

dialog show @s {type:"minecraft:multi_action",\
    title:[{text:"§6[DaBsu]§r Select Potential..."}],\
    columns:3,\
    actions:[\
        {label:{text:"Light Limit...",color:"#a4fdff"},width:100,tooltip:"Overwrite sky and block light limit for all potentials"},\
        {label:{text:"Overwrite All...",color:"#ffc575"},width:100,tooltip:"Edit the §7SpawnPotentials§c key as a whole"},\
        {label:{text:"Delete All",color:"#ffa4a4"},width:100,tooltip:"§cDelete All Spawn Potentials"},\
        {label:{text:"[+]",color:"green",bold:true},width:90,tooltip:"Append a new potential"},\
    ]\
}