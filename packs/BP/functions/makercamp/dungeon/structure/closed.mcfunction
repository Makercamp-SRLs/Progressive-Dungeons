# © Makercamp SRLS, 2022
# authors: Fabrimat
# description: Paste closed shape

# Forward
execute @s[rym=-45, ry=45] ^-8 ^-2 ^8 structure load makercamp:closed ~ ~ ~ 0_degrees none layer_by_layer
# Left
execute @s[rym=-135, ry=-45] ^8 ^-2 ^8 structure load makercamp:closed ~ ~ ~ 270_degrees none layer_by_layer
# Right
execute @s[rym=45, ry=135] ^-8 ^-2 ^24 structure load makercamp:closed ~ ~ ~ 90_degrees none layer_by_layer
# Back
execute @s[rym=135, ry=-135] ^8 ^-2 ^24 structure load makercamp:closed ~ ~ ~ 180_degrees none layer_by_layer

event entity @s makercamp:despawn_event

tellraw @a[tag=debug] {"rawtext":[{"text":"[Debug] Paste forced closed"}]}