# Forward
execute @s[rym=-45, ry=45] ^-8 ^-2 ^8 structure load makercamp:forward ~ ~ ~ 0_degrees none layer_by_layer
# Left
execute @s[rym=-135, ry=-45] ^8 ^-2 ^8 structure load makercamp:forward ~ ~ ~ 270_degrees none layer_by_layer
# Right
execute @s[rym=45, ry=135] ^-8 ^-2 ^24 structure load makercamp:forward ~ ~ ~ 90_degrees none layer_by_layer
# Back
execute @s[rym=135, ry=-135] ^8 ^-2 ^24 structure load makercamp:forward ~ ~ ~ 180_degrees none layer_by_layer

tp @s ^ ^ ^16 facing ^ ^ ^17

tellraw @a[tag=debug] {"rawtext":[{"text":"[Debug] Paste normal forward"}]}

tag @s add ran