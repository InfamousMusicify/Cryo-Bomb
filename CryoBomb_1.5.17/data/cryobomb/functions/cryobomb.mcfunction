# cryobomb
# Magma Block Killer
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:magma_block
# stop lava filter
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:lava
# Lava Cool
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:basalt replace minecraft:lava
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:basalt replace minecraft:lava
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:basalt replace minecraft:lava
# Water Freeze
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:water
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:water

execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-4 ~-7 ~-4 ~4 ~6 ~4 minecraft:ice replace #minecraft:cryolog
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-5 ~-6 ~-5 ~5 ~5 ~5 minecraft:ice replace #minecraft:cryolog
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] as @s run fill ~-6 ~-5 ~-6 ~6 ~4 ~6 minecraft:ice replace #minecraft:cryolog
# Effect Players closeby
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run effect give @e[distance=..2] minecraft:blindness 25 1 true
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run effect give @e[distance=..2] slowness 65 2 true
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run effect give @e[distance=..2] minecraft:mining_fatigue 65 1 true
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run effect give @e[distance=..2] minecraft:weakness 65 1 true
# Damage
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run effect give @e[distance=..2.35] instant_damage 1 1 true
# Far effect player
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run effect give @e[distance=..3.35] slowness 25 1 true
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run effect give @e[distance=..3.35] minecraft:mining_fatigue 25 1 true
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run effect give @e[distance=..3.35] minecraft:weakness 25 1 true
# Viusals
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run particle minecraft:soul_fire_flame ~ ~.55 ~ 2 2 2 1 3000 force
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run particle minecraft:soul_fire_flame ~ ~.55 ~ 2 2 2 1 3000 force
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run particle minecraft:dolphin ~ ~.55 ~ 4 4 4 1 5000 force
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run particle minecraft:dolphin ~ ~.55 ~ 4 4 4 1 5000 force
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run particle minecraft:poof ~ ~.55 ~ 2 2 2 1 250 force
# replace source of cryo, blue ice
execute as @e[type=minecraft:armor_stand,tag=cryo_entity] at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:blue_ice run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:blue_ice
# SFX
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run playsound minecraft:entity.ender_dragon.shoot master @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=cryo_entity] run playsound minecraft:block.respawn_anchor.deplete master @a[distance=..25]
# Kill AS
kill @e[type=minecraft:armor_stand,tag=cryo_entity]
#