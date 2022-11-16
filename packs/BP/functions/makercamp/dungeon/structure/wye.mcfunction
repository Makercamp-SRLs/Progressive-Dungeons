# Forward
execute @s[rym=-45, ry=45] ^-8 ^-2 ^8 structure load makercamp:wye ~ ~ ~ 0_degrees none layer_by_layer
# Left
execute @s[rym=-135, ry=-45] ^8 ^-2 ^8 structure load makercamp:wye ~ ~ ~ 270_degrees none layer_by_layer
# Right
execute @s[rym=45, ry=135] ^-8 ^-2 ^24 structure load makercamp:wye ~ ~ ~ 90_degrees none layer_by_layer
# Back
execute @s[rym=135, ry=-135] ^8 ^-2 ^24 structure load makercamp:wye ~ ~ ~ 180_degrees none layer_by_layer

summon makercamp:marker ~ ~ ~
tp @e[tag=!waypoint, tag=!ran, r=1, type=makercamp:marker] ^ ^ ^16 facing ^1 ^ ^16
execute @s ^ ^ ^16 tag @e[tag=!ran, tag=!waypoint, r=1, type=makercamp:marker] add waypoint
tp @s ^ ^ ^16 facing ^-2 ^ ^16

tag @s[tag=!forcing] add ran
tag @s[tag=forcing] add f_ran

execute @s[tag=!forcing] ~ ~ ~ tellraw @a[tag=debug] {"rawtext":[{"text":"[Debug] Paste normal wye"}]}
execute @s[tag=forcing] ~ ~ ~ tellraw @a[tag=debug] {"rawtext":[{"text":"[Debug] Paste forced wye"}]}