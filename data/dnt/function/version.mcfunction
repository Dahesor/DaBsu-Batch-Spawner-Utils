data modify storage dnt:ram sys set value {pong__:true,version:200,VersionName:"v2.0.0",MCVersionRange:"26.1+"}

tellraw @s [{text:"DNT - Dahesor's NBT Transformer",color:"yellow"},"\n - Data Version: ",{storage:"dnt:ram",nbt:"sys.version",color:"green"},"\n - Version: ",{storage:"dnt:ram",nbt:"sys.VersionName",color:"green"},"\n - MC Version Range: ",{storage:"dnt:ram",nbt:"sys.MCVersionRange",color:"green"}]

return 200