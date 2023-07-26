-------TABLES-------

CREATE TABLE planets(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  orbits_around_star VARCHAR(50) NOT NULL,
  orbital_period NUMERIC(10, 3) NOT NULL,
  star_id INT REFERENCES stars);


CREATE TABLE stars(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  orbiting_planets VARCHAR(50) NOT NULL,
  temperature INT NOT NULL
  );


CREATE TABLE moons(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  orbits_around_planet VARCHAR(50) NOT NULL,
  moon_id SERIAL NOT NULL REFERENCES planets
  );

-------DATA-------

INSERT INTO stars(name, orbiting_planets, temperature)
VALUES
  ('The Sun', 'Earth', '5800'),
  ('The Sun', 'Mars', '5800'),
  ('The Sun', 'Venus', '5800'),
  ('Proxima Centauri', 'Proxima Centauri b', '3042'),
  ('Gliese 876', 'Gliese 876 b', '3192');


INSERT INTO planets(name, orbits_around_star, orbital_period, star_id)
VALUES
  ('Earth', 'The Sun', '1.00', '1'),
  ('Mars', 'The Sun', '1.882', '1'),
  ('Venus', 'The Sun', '1.00', '1'),
  ('Proxima Centauri b', 'Proxima Centauri', '0.03', '2'),
  ('Gliese 876 b', 'Gliese 876', '0.236', '3');


INSERT INTO moons(name, orbits_around_planet, planet_id)
VALUES
    ('The Moon', 'Earth', '1'),
    ('Phobos', 'Mars', '2'),
    ('Deimos', 'Mars', '2');



ALTER TABLE planets RENAME COLUMN name TO planet;

SELECT planet, orbits_around_star AS star, COUNT(moon)
  FROM planets
    LEFT OUTER JOIN moons
      ON planets.id = moons.planet_id
      GROUP BY planets.id, moons.moon;


