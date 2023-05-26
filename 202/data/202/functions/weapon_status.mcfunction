# M202 Load Status
title @a[tag=hold_202_ap] actionbar {"text":"","bold":"true","extra":[{"text":"Loaded | ","color":"dark_purple"},{"text":"AP Shell","color":"white"}]}
title @a[tag=hold_202_he] actionbar {"text":"","bold":"true","extra":[{"text":"Loaded | ","color":"dark_purple"},{"text":"HE Shell","color":"gold"}]}
title @a[tag=hold_202,tag=!hold_202_ap,tag=!hold_202_he] actionbar {"text":"","bold":"true","extra":[{"text":"Empty | ","color":"red"},{"text":"Press Q To Reload","color":"white"}]}
execute as @a[tag=hold_202,scores={reload_202=1..}] run title @s actionbar {"text":"","bold":"true","extra":[{"text":"Reloading | ","color":"red"},{"score":{"name":"@s","objective":"reload_202"}},{"text":"%"}]}