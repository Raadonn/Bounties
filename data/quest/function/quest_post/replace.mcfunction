# Make armorstand invisible
data merge entity @s {NoGravity:1b}
# Summon block_display for the bottom
summon block_display ~-0.5 ~ ~-0.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:dark_oak_fence"},transformation:[1.0f,0.0f,0.0f,0.0f,0.0f,1.0f,0.0f,0.0f,0.0f,0.0f,1.0f,0.0f,0.0f,0.0f,0.0f,1.0f]}]}

# Summon block_display for the top
summon block_display ~-0.5 ~1 ~-0.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:cartography_table",Properties:{}},transformation:[1.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,1.0]},{id:"minecraft:item_display",item:{id:"minecraft:flow_banner_pattern",Count:1},item_display:"none",transformation:[0.0,0.0,-1.0,0.0,0.0,1.0,0.0,0.5,1.0,0.0,0.0,0.5,0.0,0.0,0.0,1.0]},{id:"minecraft:item_display",item:{id:"minecraft:flow_banner_pattern",Count:1},item_display:"none",transformation:[0.0,0.0,-1.0,1.0,0.0,1.0,0.0,0.5,1.0,0.0,0.0,0.5,0.0,0.0,0.0,1.0]},{id:"minecraft:item_display",item:{id:"minecraft:flow_banner_pattern",Count:1},item_display:"none",transformation:[-1.0,0.0,-0.0,0.5,0.0,1.0,0.0,0.5,0.0,0.0,-1.0,1.0,0.0,0.0,0.0,1.0]},{id:"minecraft:item_display",item:{id:"minecraft:flow_banner_pattern",Count:1},item_display:"none",transformation:[-1.0,0.0,-0.0,0.5,0.0,1.0,0.0,0.5,0.0,0.0,-1.0,0.0,0.0,0.0,0.0,1.0]}]}
