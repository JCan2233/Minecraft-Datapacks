execute unless entity @s[nbt={ignited:1b}] unless entity @s[nbt={powered:1b}] run data modify entity @s ExplosionRadius set value 0b
execute if entity @s[nbt={ignited:1b}] unless entity @s[nbt={powered:1b}] run data modify entity @s ExplosionRadius set value 3b
execute if entity @s[nbt={powered:1b}] run data modify entity @s ExplosionRadius set value 6b