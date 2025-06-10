data modify storage dnt:ram concat set value {s1:"",s2:"",s3:"",s4:""}

data modify storage dnt:ram concat.s1 set from storage dnt:ram in[0]
data modify storage dnt:ram concat.s2 set from storage dnt:ram in[1]
data modify storage dnt:ram concat.s3 set from storage dnt:ram in[2]
data modify storage dnt:ram concat.s4 set from storage dnt:ram in[3]

function dnt:private/concat/conbine/join with storage dnt:ram concat

data remove storage dnt:ram in[0]
data remove storage dnt:ram in[0]
data remove storage dnt:ram in[0]
data remove storage dnt:ram in[0]
execute if data storage dnt:ram in[0] run function dnt:private/concat/joint_loop