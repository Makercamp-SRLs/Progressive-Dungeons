# © Makercamp SRLS, 2022
# authors: Fabrimat
# description: Create the first dungeon room
# called by: player

scoreboard objectives add ticks dummy
scoreboard objectives add structures dummy
scoreboard objectives add random dummy
scoreboard objectives add delay dummy

scoreboard players set control structures 10
scoreboard players set control ticks 0
scoreboard players set control random 0

execute @p ~ ~ ~ structure load makercamp:forward ~-8 ~-2 ~-8
execute @p ~ ~ ~ summon makercamp:marker ~ ~ ~
execute @p ~ ~ ~ tag @e[type=makercamp:marker, r=1] add init1
execute @p ~ ~ ~ tp @e[tag=init1] ~ ~ ~ 0 0
execute @p ~ ~ ~ tag @e[type=makercamp:marker, tag=init1, r=1] add waypoint

execute @p ~ ~ ~ summon makercamp:marker ~ ~ ~
execute @p ~ ~ ~ tag @e[type=makercamp:marker, tag=!init1, r=1] add init2
execute @p ~ ~ ~ tp @e[tag=init2] ~ ~ ~ 180 0
execute @p ~ ~ ~ tag @e[type=makercamp:marker, tag=init2, r=1] add waypoint