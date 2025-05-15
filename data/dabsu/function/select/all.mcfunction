# Select all recorded spawners wether they are loaded or not
# 选择所有记录的刷怪笼，无论它们是否位于已加载区块

data modify storage dabsu:run Selected set from storage dabsu:run Dimensions
execute unless function dabsu:z_private/mod/buffer_select/start run function dabsu:z_private/text/tellraw_self {text:{text:"selected_nothing",color:"gray"}}