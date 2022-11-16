# © Makercamp SRLS, 2022
# authors: Fabrimat
# description: Check if the dungeon can go forward or there is something else
# called by: ./waypoint

execute @s ~ ~-2 ~ detect ^ ^ ^9 air 0 tag @s add allow
execute @s[tag=!allow] ~ ~ ~ tellraw @a[tag=debug] {"rawtext":[{"text":"[Debug] Can't go forward"}]}