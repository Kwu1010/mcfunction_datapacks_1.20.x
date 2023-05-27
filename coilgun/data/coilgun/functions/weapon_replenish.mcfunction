# Replenish Duplicate Thrown Weapons (When Holding Weapon & Throwing Out Another, Causing Overwrite And Deletion)
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"Fire Lance\""}}}},scores={dropped_coilgun=1..}] add hold_coilgun_duplicate
execute as @a[tag=hold_coilgun_duplicate] run give @s minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Fire Lance\"",Lore:["\"Empty\""]},CustomModelData:3}
tag @a remove hold_coilgun_duplicate

# Test If Weapon Fired Or Dropped
tag @a remove coilgun_replenish_coilgun
tag @a[scores={dropped_coilgun=1..},tag=!hold_coilgun_loaded] add coilgun_reload
tag @a[scores={dropped_coilgun=1..}] add coilgun_replenish_coilgun
tag @a[scores={fired_coilgun=1..}] add coilgun_replenish_coilgun

# Return Weapon When Dropped Or Fired
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun] at @s run kill @e[type=item,limit=1,sort=nearest,distance=..4,nbt={Item:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:"\"Fire Lance\""}}}}]
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Fire Lance\"",Lore:["\"Empty\""]},CustomModelData:3}

# Fail To Reload Loaded Weapon
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun_loaded,scores={dropped_coilgun=1..}] run tellraw @s[tag=!mute_notifications] {"text":"[Server] Failed to reload, weapon is already loaded!","color":"yellow"}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun_loaded,scores={dropped_coilgun=1..}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Fire Lance\"",Lore:["\"Bullet\""]},CustomModelData:3}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun_loaded,scores={dropped_coilgun=1..}] run tag @s remove coilgun_replenish_coilgun

# Reset Scoreboards
scoreboard players set @a dropped_coilgun 0
scoreboard players set @a fired_coilgun 0

# Store If Player Held An Fire Lance Prior To Fire or Reload
tag @a remove hold_coilgun
tag @a remove hold_coilgun_loaded
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"Fire Lance\""}}}}] add hold_coilgun
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"Fire Lance\"",Lore:["\"Bullet\""]}}}}] add hold_coilgun_loaded