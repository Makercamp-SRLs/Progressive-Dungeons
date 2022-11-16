# Forward
execute @s[rym=-45, ry=45] ^-8 ^-2 ^8 structure load makercamp:turn_right ~ ~ ~ 0_degrees none layer_by_layer
# Left
execute @s[rym=-135, ry=-45] ^8 ^-2 ^8 structure load makercamp:turn_right ~ ~ ~ 270_degrees none layer_by_layer
# Right
execute @s[rym=45, ry=135] ^-8 ^-2 ^24 structure load makercamp:turn_right ~ ~ ~ 90_degrees none layer_by_layer
# Back
execute @s[rym=135, ry=-135] ^8 ^-2 ^24 structure load makercamp:turn_right ~ ~ ~ 180_degrees none layer_by_layer

tp @s ^ ^ ^16 facing ^-2 ^ ^16

tag @s[tag=!forcing] add ran
tag @s[tag=forcing] add f_ran

execute @s[tag=!forcing] ~ ~ ~ tellraw @a[tag=debug] {"rawtext":[{"text":"[Debug] Paste normal right"}]}
execute @s[tag=forcing] ~ ~ ~ tellraw @a[tag=debug] {"rawtext":[{"text":"[Debug] Paste forced right"}]}