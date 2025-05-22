# Select spawners that are within a distance of $(r) blocks from the execution. Loaded ones only.
# 选择距离执行点 $(r) 格子内的刷怪笼。刷怪笼必须处于已加载区块内。

function dabsu:select/empty
$function dabsu:select/range/add {r:$(r)}