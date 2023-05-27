# Test For Coilgun In Offhand
tag @a remove hold_coilgun_offhand
tag @a remove hold_coilgun_loaded_offhand
tag @a[nbt={Inventory:[{id:"minecraft:knowledge_book",Slot:-106b,tag:{display:{Name:"\"Coilgun\""}}}]}] add hold_coilgun_offhand
tag @a[nbt={Inventory:[{id:"minecraft:knowledge_book",Slot:-106b,tag:{display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]}}}]}] add hold_coilgun_loaded_offhand

# Unequip Coilgun In Offhand
execute as @a[tag=hold_coilgun_offhand] run item replace entity @s weapon.offhand with air
execute as @a[tag=hold_coilgun_offhand,tag=!hold_coilgun_loaded_offhand] run give @s minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\""},CustomModelData:2}
execute as @a[tag=hold_coilgun_offhand,tag=hold_coilgun_loaded_offhand] run give @s minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Coilgun\"",Lore:["\"Bullet\""]},CustomModelData:2}