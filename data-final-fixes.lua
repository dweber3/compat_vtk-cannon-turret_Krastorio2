data.raw["ammo"]["cannon-shell-magazine"].ammo_type.action.action_delivery.max_range = data.raw["ammo"]["cannon-shell"].ammo_type.action.action_delivery.max_range
data.raw["ammo"]["explosive-cannon-shell-magazine"].ammo_type.action.action_delivery.max_range = data.raw["ammo"]["explosive-cannon-shell"].ammo_type.action.action_delivery.max_range
data.raw["ammo"]["uranium-cannon-shell-magazine"].ammo_type.action.action_delivery.max_range = data.raw["ammo"]["uranium-cannon-shell"].ammo_type.action.action_delivery.max_range
data.raw["ammo"]["explosive-uranium-cannon-shell-magazine"].ammo_type.action.action_delivery.max_range = data.raw["ammo"]["explosive-uranium-cannon-shell"].ammo_type.action.action_delivery.max_range
local cannon_turret_attack = data.raw["ammo-turret"]["vtk-cannon-turret"].attack_parameters
local hvy_cannon_turret_attack = data.raw["ammo-turret"]["vtk-cannon-turret-heavy"].attack_parameters
local buffer = cannon_turret_attack["prepare_range"] - cannon_turret_attack["range"]
local hvy_buffer = hvy_cannon_turret_attack["prepare_range"] - hvy_cannon_turret_attack["range"]
local hvy_penalty = cannon_turret_attack["range"] - hvy_cannon_turret_attack["range"]
data.raw["ammo-turret"]["vtk-cannon-turret"].attack_parameters.range = data.raw.gun["tank-cannon"].attack_parameters.range
data.raw["ammo-turret"]["vtk-cannon-turret"].attack_parameters.prepare_range = data.raw["ammo-turret"]["vtk-cannon-turret"].attack_parameters.range + buffer
data.raw["ammo-turret"]["vtk-cannon-turret-heavy"].attack_parameters.range = data.raw.gun["tank-cannon"].attack_parameters.range - hvy_penalty
data.raw["ammo-turret"]["vtk-cannon-turret-heavy"].attack_parameters.prepare_range = data.raw["ammo-turret"]["vtk-cannon-turret-heavy"].attack_parameters.range + buffer
