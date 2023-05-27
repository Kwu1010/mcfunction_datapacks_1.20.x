# Replenish Duplicate Thrown Weapons (When Holding Weapon & Throwing Out Another, Causing Overwrite And Deletion)
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"Coilgun\""}}}},scores={dropped_coilgun=1..}] add hold_coilgun_duplicate
execute as @a[tag=hold_coilgun_duplicate] run give @s minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Empty\""]},CustomModelData:3}
tag @a remove hold_coilgun_duplicate

# Test If Weapon Fired Or Dropped
tag @a remove coilgun_replenish_coilgun
tag @a[scores={dropped_coilgun=1..},tag=!hold_coilgun_loaded] add coilgun_reload
tag @a[scores={dropped_coilgun=1..}] add coilgun_replenish_coilgun
tag @a[scores={fired_coilgun=1..}] add coilgun_replenish_coilgun

# Return Weapon When Dropped Or Fired
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun] at @s run kill @e[type=item,limit=1,sort=nearest,distance=..4,nbt={Item:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:"\"Coilgun\""}}}}]
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=..1}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Empty\""]},CustomModelData:2,Damage:0}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=2..2}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:1}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=3..3}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:2}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=4..4}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:3}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=5..5}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:4}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=6..6}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:5}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=7..7}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:6}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=8..8}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:7}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=9..9}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:8}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=10..10}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:9}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=11..11}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:10}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=12..12}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:11}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=13..13}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:12}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=14..14}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:13}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=15..15}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:14}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=16..16}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:15}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=17..17}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:16}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=18..18}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:17}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=19..19}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:18}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=20..20}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:19}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=21..21}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:20}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=22..22}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:21}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=23..23}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:22}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=24..24}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:23}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=25..25}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:24}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=26..26}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:25}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=27..27}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:26}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=28..28}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:27}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=29..29}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:28}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun,scores={bullet_count=30..30}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:29}

# Fail To Reload Loaded Weapon
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun_loaded,scores={dropped_coilgun=1..,bullet_count=30..30}] run tellraw @s[tag=!mute_notifications] {"text":"[Server] Failed to reload, weapon is already loaded!","color":"yellow"}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun_loaded,scores={dropped_coilgun=1..}] run item replace entity @s weapon.mainhand with minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2,Damage:30}
execute as @a[tag=coilgun_replenish_coilgun,tag=hold_coilgun_loaded,scores={dropped_coilgun=1..}] run tag @s remove coilgun_replenish_coilgun

# Reset Scoreboards
scoreboard players set @a dropped_coilgun 0
scoreboard players set @a fired_coilgun 0

# Store If Player Held An Coilgun Prior To Fire or Reload
tag @a remove hold_coilgun
tag @a remove hold_coilgun_loaded
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"Coilgun\""}}}}] add hold_coilgun
tag @a[nbt={SelectedItem:{id:"minecraft:knowledge_book",tag:{display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]}}}}] add hold_coilgun_loaded