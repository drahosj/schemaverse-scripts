SELECT last_value FROM tic_seq;
SELECT id, balance, fuel_reserve FROM my_player;

SELECT 
planets.id, planets.name, planets.mine_limit, planets.conqueror_id, planets.location,
my_ships.name, my_ships.current_fuel, my_ships.speed, my_ships.direction, my_ships.action
FROM my_ships
LEFT JOIN planets ON my_ships.action_target_id=planets.id 
WHERE my_ships.action='MINE'
ORDER BY planets.name;

SELECT 
id, name, current_health, max_health, current_fuel, max_fuel, max_speed, location_x, location_y, direction, speed, destination, action
FROM my_ships;
