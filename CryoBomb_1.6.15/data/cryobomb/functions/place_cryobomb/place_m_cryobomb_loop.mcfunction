# place_cryobomb/place_m_cryobomb_loop
#determine where to place the armor stand
execute if block ~ ~ ~ minecraft:packed_ice align xyz unless entity @e[dx=0,dy=0,dz=0,tag=m_cryo_entity] run function cryobomb:place_cryobomb/place_m_cryobomb_armorstand

execute unless entity @s[scores={m_cryobomb=90..}] positioned ^1 ^1 ^ if block ~ ~ ~ minecraft:packed_ice align xyz unless entity @e[dx=0,dy=0,dz=0,tag=m_cryo_entity] run function cryobomb:place_cryobomb/place_m_cryobomb_armorstand
execute unless entity @s[scores={m_cryobomb=90..}] positioned ^1 ^ ^ if block ~ ~ ~ minecraft:packed_ice align xyz unless entity @e[dx=0,dy=0,dz=0,tag=m_cryo_entity] run function cryobomb:place_cryobomb/place_m_cryobomb_armorstand
execute unless entity @s[scores={m_cryobomb=90..}] positioned ^1 ^-1 ^ if block ~ ~ ~ minecraft:packed_ice align xyz unless entity @e[dx=0,dy=0,dz=0,tag=m_cryo_entity] run function cryobomb:place_cryobomb/place_m_cryobomb_armorstand
execute unless entity @s[scores={m_cryobomb=90..}] positioned ^ ^1 ^ if block ~ ~ ~ minecraft:packed_ice align xyz unless entity @e[dx=0,dy=0,dz=0,tag=m_cryo_entity] run function cryobomb:place_cryobomb/place_m_cryobomb_armorstand
execute unless entity @s[scores={m_cryobomb=90..}] positioned ^ ^-1 ^ if block ~ ~ ~ minecraft:packed_ice align xyz unless entity @e[dx=0,dy=0,dz=0,tag=m_cryo_entity] run function cryobomb:place_cryobomb/place_m_cryobomb_armorstand
execute unless entity @s[scores={m_cryobomb=90..}] positioned ^-1 ^1 ^ if block ~ ~ ~ minecraft:packed_ice align xyz unless entity @e[dx=0,dy=0,dz=0,tag=m_cryo_entity] run function cryobomb:place_cryobomb/place_m_cryobomb_armorstand
execute unless entity @s[scores={m_cryobomb=90..}] positioned ^-1 ^ ^ if block ~ ~ ~ minecraft:packed_ice align xyz unless entity @e[dx=0,dy=0,dz=0,tag=m_cryo_entity] run function cryobomb:place_cryobomb/place_m_cryobomb_armorstand
execute unless entity @s[scores={m_cryobomb=90..}] positioned ^-1 ^-1 ^ if block ~ ~ ~ minecraft:packed_ice align xyz unless entity @e[dx=0,dy=0,dz=0,tag=m_cryo_entity] run function cryobomb:place_cryobomb/place_m_cryobomb_armorstand

scoreboard players add @s m_cryobomb 1

execute unless entity @s[scores={m_cryobomb=90..}] positioned ^ ^ ^-0.1 run function cryobomb:place_cryobomb/place_m_cryobomb_loop
#