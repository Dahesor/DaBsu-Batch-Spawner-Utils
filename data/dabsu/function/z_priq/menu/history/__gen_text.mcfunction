$data modify storage dabsu:run dialog.dialog.body[1].description.contents set value [{text:"This spawner has desynced from its original §aSpawnPotentials§r type "},{text:"$(ot)",color:"aqua"},{text:" (Spawner Count: ",color:"gray",extra:["$(oc)",") "]},{text:"and formed a new type "},{text:"$(nt)",color:"aqua"},{text:" (Spawner Count: ",color:"gray",extra:["$(nc)",")"]}]

data modify storage dabsu:run dialog.dialog.body[1].description.contents[0].text set from storage dabsu:run lang.this.menu_history___gen_text_1
data modify storage dabsu:run dialog.dialog.body[1].description.contents[2].text set from storage dabsu:run lang.this.menu_history___gen_text_3
data modify storage dabsu:run dialog.dialog.body[1].description.contents[3].text set from storage dabsu:run lang.this.menu_history___gen_text_4
data modify storage dabsu:run dialog.dialog.body[1].description.contents[5].text set from storage dabsu:run lang.this.menu_history___gen_text_3