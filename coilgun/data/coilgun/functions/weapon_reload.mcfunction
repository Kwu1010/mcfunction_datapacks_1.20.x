# Set Reload Tags
tag @a remove reload_coilgun_loaded
tag @a[nbt={Inventory:[{id:"minecraft:command_block",Slot:-106b,tag:{display:{Name:"\"Bullet\""}}}]}] add reload_coilgun_loaded

# Reload Cooldown & Item Replacement
execute as @a[tag=!hold_coilgun] run tag @s remove reload_coilgun
execute as @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"Fire Lance\"",Lore:["\"Bullet\""]}}}}] run tag @s remove reload_coilgun
execute as @a[tag=hold_coilgun,scores={dropped_coilgun=1..}] run tag @s add reload_coilgun
scoreboard players set @a[tag=!reload_coilgun] reload_coilgun 0
scoreboard players add @a[tag=reload_coilgun] reload_coilgun 1
execute as @a[tag=reload_coilgun,tag=!reload_coilgun_loaded,scores={reload_coilgun=100..}] run tellraw @s[tag=!mute_notifications] {"text":"[Server] Failed to reload, equip ammo in your offhand!","color":"yellow"}
execute as @a[tag=reload_coilgun,tag=reload_coilgun_loaded,scores={reload_coilgun=100..}] run clear @s minecraft:command_block{display:{Name:"\"Bullet\""}} 1
execute as @a[tag=reload_coilgun,tag=reload_coilgun_loaded,scores={reload_coilgun=100..}] at @s run playsound minecraft:custom.reload_202 player @a ~ ~ ~ 1 1
execute as @a[tag=reload_coilgun,tag=reload_coilgun_loaded,scores={reload_coilgun=100..}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Fire Lance\"",Lore:["\"Bullet\""]},CustomModelData:3}
execute as @a[tag=reload_coilgun,scores={reload_coilgun=100..}] run tag @s remove reload_coilgun_loaded
execute as @a[tag=reload_coilgun,scores={reload_coilgun=100..}] run tag @s remove reload_coilgun