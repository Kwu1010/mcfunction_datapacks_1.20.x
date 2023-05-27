# Test For Fire Lance In Offhand
tag @a remove hold_coilgun_offhand
tag @a remove hold_coilgun_loaded_offhand
tag @a[nbt={Inventory:[{id:"minecraft:knowledge_book",Slot:-106b,tag:{display:{Name:"\"Fire Lance\""}}}]}] add hold_coilgun_offhand
tag @a[nbt={Inventory:[{id:"minecraft:knowledge_book",Slot:-106b,tag:{display:{Name:"\"Fire Lance\"",Lore:["\"Bullet\""]}}}]}] add hold_coilgun_loaded_offhand

# Unequip Fire Lance In Offhand
execute as @a[tag=hold_coilgun_offhand] run item replace entity @s weapon.offhand with air
execute as @a[tag=hold_coilgun_offhand,tag=!hold_coilgun_loaded_offhand] run give @s minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Fire Lance\""},CustomModelData:3}
execute as @a[tag=hold_coilgun_offhand,tag=hold_coilgun_loaded_offhand] run give @s minecraft:knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:"\"Fire Lance\"",Lore:["\"Bullet\""]},CustomModelData:3}