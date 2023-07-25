-- CREATE TABLE moons(
-- id SERIAL PRIMARY KEY,
-- name VARCHAR(50) NOT NULL,
-- orbits_around_planet VARCHAR(50) NOT NULL,
-- moon_id SERIAL NOT NULL REFERENCES planets);



-- ALTER TABLE planets
-- ADD COLUMN planet_id SERIAL NOT NULL REFERENCES stars;


SELECT name, orbits_around_star AS star, moons COUNT(*)
FROM planets


INSERT INTO planets(name, orbits_around_star, orbital_period, star_id)
VALUES
  ('Earth', 'The Sun', '1.00', '1'),
  ('Mars', 'The Sun', '1.882', '1'),
  ('Venus', 'The Sun', '1.00', '1'),
  ('Proxima Centauri b', 'Proxima Centauri', '0.03', '2'),
  ('Gliese 876 b', 'Gliese 876', '0.236', '3');


INSERT INTO stars(name, orbiting_planets, temperature)
VALUES
  ('The Sun', 'Earth', '5800'),
  ('The Sun', 'Mars', '5800'),
    ('The Sun', 'Venus', '5800'),
('Proxima Centauri', 'Proxima Centauri b', '3042'),
('Gliese 876', 'Gliese 876 b', '3192');






INSERT INTO moons(name, orbits_around_planet)
VALUES
    ('The Moon', 'Earth'),
    ('Phobos', 'Mars'),
    ('Deimos', 'Mars');







