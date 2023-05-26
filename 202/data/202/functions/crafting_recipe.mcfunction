# M202 Recipe
scoreboard objectives add recipe-m202 trigger
scoreboard players enable @a recipe-m202
tellraw @a[scores={recipe-m202=1..}] {"text":"[M202 Crafting Recipe]","color":"gold","bold":"true"}
tellraw @a[scores={recipe-m202=1..}] {"text":"Ammo Type: Homing Rocket","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-m202=1..}] {"text":"Capacity: 1 Ammo ","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-m202=1..}] {"text":"Reload: 5 Seconds","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-m202=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-m202=1..}] {"text":"EPILEPSY WARNING: FLASHING OBJECTS MAY TRIGGER SEIZURES DURING FLIGHT.","color":"red","bold":"true","italic":"false"}
tellraw @a[scores={recipe-m202=1..}] {"text":"Item Grid:","color":"gold"}
tellraw @a[scores={recipe-m202=1..}] [{"text":"Comparator  ","color":"gold"},{"text":" | ","color":"gold"},{"text":"Iron Block   ","color":"gold"},{"text":" | ","color":"gold"},{"text":"Iron Block","color":"gold"}]
tellraw @a[scores={recipe-m202=1..}] [{"text":"Copper Ingot","color":"gold"},{"text":" | ","color":"gold"},{"text":"Copper Ingot","color":"gold"},{"text":" | ","color":"gold"},{"text":"Netherite Ingot","color":"gold"}]
tellraw @a[scores={recipe-m202=1..}] [{"text":"Lever         ","color":"gold"},{"text":" | ","color":"gold"},{"text":"Iron Block   ","color":"gold"},{"text":" | ","color":"gold"},{"text":"Iron Block","color":"gold"}]
scoreboard players set @a recipe-m202 0

# AP Shell Recipe
scoreboard objectives add recipe-ap_shell trigger
scoreboard players enable @a recipe-ap_shell
tellraw @a[scores={recipe-ap_shell=1..}] {"text":"[Armor-Penetrating Shell Crafting Recipe]","color":"gold","bold":"true"}
tellraw @a[scores={recipe-ap_shell=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-ap_shell=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-ap_shell=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-ap_shell=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-ap_shell=1..}] {"text":"EPILEPSY WARNING: FLASHING OBJECTS MAY TRIGGER SEIZURES DURING FLIGHT.","color":"red","bold":"true","italic":"false"}
tellraw @a[scores={recipe-ap_shell=1..}] {"text":"Item Grid:","color":"gold"}
tellraw @a[scores={recipe-ap_shell=1..}] [{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"}]
tellraw @a[scores={recipe-ap_shell=1..}] [{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"}]
tellraw @a[scores={recipe-ap_shell=1..}] [{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"}]
scoreboard players set @a recipe-ap_shell 0

# HE Shell Recipe
scoreboard objectives add recipe-he_shell trigger
scoreboard players enable @a recipe-he_shell
tellraw @a[scores={recipe-he_shell=1..}] {"text":"[High-Explosive Shell Crafting Recipe]","color":"gold","bold":"true"}
tellraw @a[scores={recipe-he_shell=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-he_shell=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-he_shell=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-he_shell=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-he_shell=1..}] {"text":"EPILEPSY WARNING: FLASHING OBJECTS MAY TRIGGER SEIZURES DURING FLIGHT.","color":"red","bold":"true","italic":"false"}
tellraw @a[scores={recipe-he_shell=1..}] {"text":"Item Grid:","color":"gold"}
tellraw @a[scores={recipe-he_shell=1..}] [{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"}]
tellraw @a[scores={recipe-he_shell=1..}] [{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"}]
tellraw @a[scores={recipe-he_shell=1..}] [{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"}]
scoreboard players set @a recipe-he_shell 0

# Flare Gun Recipe
scoreboard objectives add recipe-flaregun trigger
scoreboard players enable @a recipe-flaregun
tellraw @a[scores={recipe-flaregun=1..}] {"text":"[Flare Gun Crafting Recipe]","color":"gold","bold":"true"}
tellraw @a[scores={recipe-flaregun=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-flaregun=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-flaregun=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-flaregun=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-flaregun=1..}] {"text":"EPILEPSY WARNING: FLASHING OBJECTS MAY TRIGGER SEIZURES DURING FLIGHT.","color":"red","bold":"true","italic":"false"}
tellraw @a[scores={recipe-flaregun=1..}] {"text":"Item Grid:","color":"gold"}
tellraw @a[scores={recipe-flaregun=1..}] [{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"}]
tellraw @a[scores={recipe-flaregun=1..}] [{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"}]
tellraw @a[scores={recipe-flaregun=1..}] [{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"}]
scoreboard players set @a recipe-flaregun 0

# Flare Recipe
scoreboard objectives add recipe-flare trigger
scoreboard players enable @a recipe-flare
tellraw @a[scores={recipe-flare=1..}] {"text":"[Flare Crafting Recipe]","color":"gold","bold":"true"}
tellraw @a[scores={recipe-flare=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-flare=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-flare=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-flare=1..}] {"text":"","color":"white","bold":"false","italic":"false"}
tellraw @a[scores={recipe-flare=1..}] {"text":"EPILEPSY WARNING: FLASHING OBJECTS MAY TRIGGER SEIZURES DURING FLIGHT.","color":"red","bold":"true","italic":"false"}
tellraw @a[scores={recipe-flare=1..}] {"text":"Item Grid:","color":"gold"}
tellraw @a[scores={recipe-flare=1..}] [{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"}]
tellraw @a[scores={recipe-flare=1..}] [{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"}]
tellraw @a[scores={recipe-flare=1..}] [{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"},{"text":"|","color":"gold"},{"text":"","color":"gold"}]
scoreboard players set @a recipe-flare 0