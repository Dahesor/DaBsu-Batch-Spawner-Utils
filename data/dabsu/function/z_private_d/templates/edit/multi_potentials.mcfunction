data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:[{text:"§6[DaBsu]§r Select Potential..."}],\
    body:{type:"plain_message",width:300,contents:"Since selection includes spawners with different SpawnPotentials, you cannot edit each potential in detail. You may only make overall changes.\n To edit potentials in detail for multiple spawners, make sure that your selection only contains spawners with the same SpawnPotentials"},\
    columns:1,\
    actions:[\
        {label:{text:"Overwrite All Light Requirements...",color:"#dbfeff"},width:300,tooltip:"Overwrite sky and block light limit for all potentials in all selected spawners",on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1210"}},\
        {label:{text:"Merge Each Entry With...",color:"#ffb7fe"},width:300,tooltip:"Merge any NBT into every SpawnPotential entry of every selected spawner",on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1211"}},\
        {label:{text:"Replace SpawnPotential NBT With...",color:"#ffe1b7"},width:300,tooltip:"Replace the §7SpawnPotentials§r key in all selected spawners with your input",on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1212"}},\
        {label:{text:"Append To All With...",color:"#dbffc8"},width:300,tooltip:"Append a new SpawnPotential entry to all selected spawners",on_click:{action:"run_command",command:"/trigger trigger.dabsu set 1220"}},\
    ],\
    on_cancel:{action:"run_command",command:"/trigger trigger.dabsu set 1004"},\
}

return 1

dialog show @s {type:"minecraft:multi_action",\
    title:[{text:"§6[DaBsu]§r Select Potential..."}],\
    body:{type:"plain_message",width:300,contents:"Since selection includes spawners with different SpawnPotentials, you cannot edit each potential in detail. You may only make overall changes.\n To edit potentials in detial for multiple spawners, make sure that your selection only contains spawners with the same SpawnPotentials"},\
    columns:3,\
    actions:[\
        {label:{text:"Light Limit...",color:"#a4fdff"},width:100,tooltip:"Overwrite sky and block light limit for all potentials"},\
        {label:{text:"Overwrite All...",color:"#ffc575"},width:100,tooltip:"Edit the §7SpawnPotentials§c key as a whole"},\
        {label:{text:"Delete All",color:"#ffa4a4"},width:100,tooltip:"§cDelete All Spawn Potentials"},\
        {label:{text:"[+]",color:"green",bold:true},width:90,tooltip:"Append a new potential"},\
    ]\
}