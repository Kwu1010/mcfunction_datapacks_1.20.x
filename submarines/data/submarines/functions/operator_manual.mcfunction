scoreboard objectives add manual-submarine trigger
scoreboard players enable @a manual-submarine

tellraw @a[scores={manual-submarine=1..1}] {"text":"[Submarine Operator Manual - Page 1 of 4]","color":"gold","bold":"true"}
tellraw @a[scores={manual-submarine=1..1}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=1..1}] {"text":"Disclaimers & Warnings","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=1..1}] {"text":"Top Speed - 10 BPS","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=1..1}] {"text":"Unable to spawn on land.","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=1..1}] {"text":"Surfaces when there are no drivers.","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=1..1}] {"text":"Does not detonate, but despawns if seat is destroyed.","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=1..1}] {"text":"Drops spawn egg on despawn.","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=1..1}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=1..1}] {"text":"EPILEPSY WARNING: FLASHING OBJECTS MAY TRIGGER SEIZURES DURING FLIGHT.","color":"red","bold":"true","italic":"false"}

tellraw @a[scores={manual-submarine=2..2}] {"text":"[Submarine Operator Manual - Page 2 of 4]","color":"gold","bold":"true"}
tellraw @a[scores={manual-submarine=2..2}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=2..2}] {"text":"Movement Controls","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=2..2}] {"text":"Hold hotbar slot 1 to decrease throttle.","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=2..2}] {"text":"Hold hotbar slot 3 to increase throttle.","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=2..2}] {"text":"Hold hotbar slot 4-9 to maintain throttle.","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=2..2}] {"text":"Hold hotbar slot 2 to control depth.","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=2..2}] {"text":"Look up to surface, look down to dive.","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=2..2}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=2..2}] {"text":"EPILEPSY WARNING: FLASHING OBJECTS MAY TRIGGER SEIZURES DURING FLIGHT.","color":"red","bold":"true","italic":"false"}

tellraw @a[scores={manual-submarine=3..3}] {"text":"[Submarine Operator Manual - Page 3 of 4]","color":"gold","bold":"true"}
tellraw @a[scores={manual-submarine=3..3}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=3..3}] {"text":"Despawning","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=3..3}] {"text":"Break seat to despawn.","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=3..3}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=3..3}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=3..3}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=3..3}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=3..3}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=3..3}] {"text":"EPILEPSY WARNING: FLASHING OBJECTS MAY TRIGGER SEIZURES DURING FLIGHT.","color":"red","bold":"true","italic":"false"}

tellraw @a[scores={manual-submarine=4..4}] {"text":"[Submarine Operator Manual - Page 4 of 4]","color":"gold","bold":"true"}
tellraw @a[scores={manual-submarine=4..4}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=4..4}] {"text":"Torpedoes","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=4..4}] {"text":"Fire by dropping a TNT minecart while driving.","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=4..4}] {"text":"Torpedoes take time to arm when fired. Detonation fails if unarmed.","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=4..4}] {"text":"Armed torpedoes emit bubble particles, detonates on impact/entity collision.","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=4..4}] {"text":"Affected by gravity outside water.","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=4..4}] {"text":"Detonation destroys blocks even underwater.","color":"gold","bold":"true"}
tellraw @a[scores={manual-submarine=4..4}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=4..4}] {"text":"EPILEPSY WARNING: FLASHING OBJECTS MAY TRIGGER SEIZURES DURING FLIGHT.","color":"red","bold":"true","italic":"false"}

tellraw @a[scores={manual-submarine=5..3102021}] {"text":"[Submarine Operator Manual - Page - of 4]","color":"gold","bold":"true"}
tellraw @a[scores={manual-submarine=5..3102021}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=5..3102021}] {"text":"Use '/trigger manual-submarine set [1-4]' to access the manual pages.","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=5..3102021}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=5..3102021}] {"text":"Page 1 - Disclaimers & Warnings","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=5..3102021}] {"text":"Page 2 - Movement Controls","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=5..3102021}] {"text":"Page 3 - Despawning","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=5..3102021}] {"text":"Page 4 - Torpedoes","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=5..3102021}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=5..3102021}] {"text":"EPILEPSY WARNING: FLASHING OBJECTS MAY TRIGGER SEIZURES DURING FLIGHT.","color":"red","bold":"true","italic":"false"}

tellraw @a[scores={manual-submarine=3102023..}] {"text":"[Submarine Operator Manual - Page - of 4]","color":"gold","bold":"true"}
tellraw @a[scores={manual-submarine=3102023..}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=3102023..}] {"text":"Use '/trigger manual-submarine set #' to access the manual pages, where # is the page number [1-4].","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=3102023..}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=3102023..}] {"text":"Page 1 - Disclaimers & Warnings","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=3102023..}] {"text":"Page 2 - Movement Controls","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=3102023..}] {"text":"Page 3 - Despawning","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=3102023..}] {"text":"Page 4 - Torpedoes","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=3102023..}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-submarine=3102023..}] {"text":"EPILEPSY WARNING: FLASHING OBJECTS MAY TRIGGER SEIZURES DURING FLIGHT.","color":"red","bold":"true","italic":"false"}

tellraw @a[scores={manual-submarine=3102022..3102022}] {"text":""}
tellraw @a[scores={manual-submarine=3102022..3102022}] {"text":""}
tellraw @a[scores={manual-submarine=3102022..3102022}] {"text":""}
tellraw @a[scores={manual-submarine=3102022..3102022}] {"text":""}
tellraw @a[scores={manual-submarine=3102022..3102022}] {"text":""}
tellraw @a[scores={manual-submarine=3102022..3102022}] {"text":""}
tellraw @a[scores={manual-submarine=3102022..3102022}] {"text":""}
tellraw @a[scores={manual-submarine=3102022..3102022}] {"text":""}
tellraw @a[scores={manual-submarine=3102022..3102022}] {"text":""}
tellraw @a[scores={manual-submarine=3102022..3102022}] {"text":""}
execute as @a[scores={manual-submarine=3102022..3102022}] at @s run tag @s add iron_lung_reference
execute as @a[scores={manual-submarine=3102022..3102022}] at @s run tp @s ~ ~ ~ ~ 0
execute as @a[scores={manual-submarine=3102022..3102022}] at @s run effect give @s minecraft:darkness 2 255 true
execute as @a[scores={manual-submarine=3102022..3102022}] at @s run summon minecraft:text_display ^ ^ ^10 {Tags:["text","iron_lung","init"],text:'[{"text":"⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀\\n","color":"white","bold":"true"},{"text":"⠀⠀⠀⠀⠀⠀⣀⣴⡿⠟⠏⠈⠱⣾⣶⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⡾⠶⠉⠙⠻⢷⣆⠀⠀⠀⠀⠀⠀\\n","color":"white","bold":"true"},{"text":"⠀⠀⠀⠀⠀⠸⠈⠳⠀⠒⠀⣄⠗⣦⠙⢿⣯⠢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠔⣨⡿⠏⢤⠰⢀⠆⠒⠂⠤⠀⠀⠀⠀⠀⠀\\n","color":"white","bold":"true"},{"text":"⠀⠀⠀⠀⠀⠐⠈⠙⡄⠘⣷⣙⠠⡃⢠⢜⠻⢧⡈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠊⣴⠟⣷⡄⢸⠇⢸⣹⡇⢀⠀⠁⠀⠀⠀⠀⠀\\n","color":"white","bold":"true"},{"text":"⠀⠀⠀⢀⣴⣀⡁⢈⣡⣆⠐⠊⠿⠖⠀⢈⠁⠉⠢⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣄⠀⠋⠩⡀⠀⠘⠿⠾⠓⠑⢤⡁⠘⣀⣵⡄⠀⠀\\n","color":"white","bold":"true"},{"text":"⠀⠀⠠⣾⣿⣽⠏⠝⡑⣀⢨⡷⡀⢀⠄⠀⠀⠀⠀⠘⢿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⠁⠀⠀⠀⠀⠀⠀⢤⣾⣗⢀⠺⡿⢿⡿⣻⡟⢀⠀\\n","color":"white","bold":"true"},{"text":"⠀⡀⢐⣁⢹⣷⠗⢜⢘⡿⡘⣱⡇⠀⠀⢀⣴⣶⣄⠀⠈⡻⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⡿⠁⠀⢠⣶⣶⡄⠀⠀⠈⣿⢻⡯⠃⠀⠄⣰⠟⢸⣇⠃\\n","color":"white","bold":"true"},{"text":"⠐⣰⣿⡝⣸⠛⣠⡏⣼⠁⣧⣿⠀⠀⠀⠘⠻⠿⠟⠀⠀⠇⣸⣿⣦⡄⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⠉⠀⠀⠙⢿⠿⠃⠀⠀⠈⢻⣞⡁⣵⠘⣆⠳⢦⢠⠻⣧\\n","color":"white","bold":"true"},{"text":"⣷⡿⠿⠁⣋⡴⡟⢡⣏⣌⣹⣽⡆⠀⠀⠀⠀⠀⠀⠀⠀⠐⢿⣿⣿⡿⠿⠖⣀⣈⠰⠾⢿⣿⣿⡿⠦⠀⠀⠀⠀⠀⠀⠀⠀⢸⡿⢏⣥⡘⣀⠛⡷⠘⡂⢨⢿\\n","color":"white","bold":"true"},{"text":"⠟⣠⣦⣀⣙⡁⠤⣾⣿⢁⣄⠻⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠾⣿⣷⡀⢿⡇⢱⣿⢃⣸⣿⡿⢆⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠴⣩⡄⢰⣧⠆⢀⣘⣛⣬⣧\\n","color":"white","bold":"true"},{"text":"⠛⣿⣿⣿⢿⣿⡗⣤⡏⢈⡿⠀⢠⣶⠀⠆⠀⢤⠂⢤⣾⣷⣾⡷⠎⣁⣩⠤⡴⠶⠶⣶⣤⣙⡒⠿⠦⢻⣦⠑⣦⡀⠰⢀⣴⡄⠀⠻⠃⢸⣧⣴⣿⣿⡟⢻⣿\\n","color":"white","bold":"true"},{"text":"⢀⠹⠋⠀⢋⡉⠀⣿⣷⣊⠴⡬⠛⠃⢀⣠⣴⠩⢄⠻⢃⣩⣥⠶⣿⡋⢙⠷⠈⠵⢦⠉⣙⣟⠿⣿⣮⡐⠒⣌⠩⣷⣤⣀⠙⠃⢤⡦⢘⣿⣿⡀⢈⣍⣃⠘⢿\\n","color":"white","bold":"true"},{"text":"⣿⠀⠀⢿⣿⢻⢮⠩⠡⠐⠂⠀⢀⣐⣋⠶⢠⠔⣡⣾⡿⢋⣡⡾⠉⠉⠀⢠⠀⠀⣤⠈⠉⠉⠷⢀⡻⣿⣷⣄⠩⡐⢤⡜⠳⠀⡀⠉⠢⠬⡯⢭⣼⢻⠻⠆⠀\\n","color":"white","bold":"true"},{"text":"⡿⠠⠀⠘⠉⠁⠚⢀⢀⣀⣀⣀⡴⠂⠀⢀⣥⣾⣿⠋⣔⠟⠁⠀⠀⣄⠀⢸⠀⠀⠆⠀⣠⠆⠀⠘⢿⣮⠻⣿⣷⣌⠀⠀⠱⢄⣀⣁⣀⡀⢀⠒⠀⠀⠣⠀⠀\\n","color":"white","bold":"true"},{"text":"⠀⠀⠒⠀⣠⡄⠈⠉⠈⠻⠃⠁⢀⣠⣴⣿⣿⠟⠓⠚⠁⠀⡤⠘⠀⠈⡀⠀⠀⠀⠀⠀⡈⠀⠃⢤⠀⠙⠓⠚⠿⢿⣷⣦⣤⡀⠀⠸⠋⠀⠀⠀⠀⣄⠈⠐⠂\\n","color":"white","bold":"true"},{"text":"⠛⠚⠛⣠⢼⣷⡄⠀⢀⠀⠀⢠⣿⣭⣤⣶⠠⠦⠀⣤⠘⠃⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠃⢠⠀⠒⠲⣶⣬⣽⣧⠀⠀⠠⡀⠀⣶⣿⢦⡑⠻⣿\\n","color":"white","bold":"true"},{"text":"⠀⠀⠀⠛⠈⠉⠀⢀⠀⠀⣠⣾⣿⣿⠉⠀⠁⢠⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠌⠀⡇⠀⠈⢹⡟⢿⣧⡀⠀⠠⠀⡆⠀⠈⠀⠀⠀\\n","color":"white","bold":"true"},{"text":"⠀⠀⠀⠀⠀⠀⠀⠀⣠⡞⣿⡿⠟⠁⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠙⠻⣿⡛⢦⡀⠀⢀⠀⠀⠀⠀⠀\\n","color":"white","bold":"true"},{"text":"⠀⠀⠀⠀⣀⡔⢀⡾⠛⣰⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣌⠛⣦⠘⢆⡀⠀⠀⠀\\n","color":"white","bold":"true"},{"text":"⠀⠀⢠⡶⠏⢀⡏⠁⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠙⠄⠈⢁⠈⠻⣦⠀⠀\\n","color":"white","bold":"true"},{"text":"⠀⠀⠈⢠⠀⠻⠗⠀⠀⠀⠤⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠿⠂⠢⡀⠀⠀\\n","color":"white","bold":"true"},{"text":"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠀⡄⠆⠀⣷⢾⡰⠀⢀⠀⠀⢠⣠⠸⣴⣸⠀⠴⣆⡆⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\\n","color":"white","bold":"true"},{"text":"⠀⠀⠀⠀⠀⠀⢀⣀⣴⣶⣾⣿⣿⣿⣷⣶⣤⣄⠀⠀⠀⣀⣀⣉⣠⣥⠶⠿⠶⢶⣤⣤⣦⣤⣤⣤⣤⣤⣤⣤⣤⣤⣶⣿⣿⣿⣿⣿⣶⣦⢀⠀⠀⠀⠀⠀⠀\\n","color":"white","bold":"true"},{"text":"⠀⠀⠀⠀⠠⠀⣾⣿⣷⢭⣍⠙⣛⣛⣛⠫⢙⣛⠽⠟⢛⡉⠥⠶⡐⢶⠉⠈⣷⢲⠦⢡⠦⠀⠨⠍⣩⠉⡉⢹⣟⠉⠛⣛⣋⡽⢛⠋⠕⣿⣿⡆⠠⡀⠀⠀⠀\\n","color":"white","bold":"true"},{"text":"⠀⠀⠀⠀⠀⠑⠀⠃⠠⣧⠈⠛⠠⠁⠈⠀⡂⠉⠀⠀⠀⠈⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠉⠀⠀⠀⠈⠁⠀⠀⠀⠀⠐⠋⢀⠧⠀⠈⠀⠉⠁⠀⠀⠀","color":"white","bold":"true"}]'}
execute as @a[scores={manual-submarine=3102022..3102022}] at @s run playsound minecraft:entity.allay.death master @s ~ ~ ~ 1 0
execute as @a[scores={manual-submarine=3102022..3102022}] at @s run playsound minecraft:entity.allay.death master @s ~ ~ ~ 1 1
execute as @e[tag=text,tag=iron_lung,tag=init] at @s run tp @s ~ ~ ~ facing entity @p[tag=iron_lung_reference]
execute as @e[tag=text,tag=iron_lung,tag=init] at @s run tag @s remove init
execute as @a[tag=iron_lung_reference] at @s run tp @s ~ ~ ~ facing entity @e[tag=text,tag=iron_lung,tag=!init,limit=1,sort=nearest]
execute as @e[tag=text,tag=iron_lung] at @s run tp @s ^ ^ ^1
execute as @e[tag=text,tag=iron_lung] at @s run scoreboard players add @s ilrl 1
execute as @e[tag=text,tag=iron_lung,scores={ilrl=20..}] at @s run kill @s


scoreboard players set @a manual-submarine 0