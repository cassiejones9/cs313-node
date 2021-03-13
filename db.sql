CREATE USER project2user WITH PASSWORD 'project2';
GRANT SELECT, INSERT, UPDATE ON compound TO project2user;
GRANT USAGE, SELECT ON SEQUENCE compound_id_seq TO project2user;
GRANT SELECT, INSERT, UPDATE ON recurve TO project2user;
GRANT USAGE, SELECT ON SEQUENCE recurve_id_seq TO project2user;

CREATE TABLE compound (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR (100),
    drawweight VARCHAR (100),
    drawlength VARCHAR (100),
    massweight VARCHAR (100),
    speed VARCHAR (100),
    axle2axle VARCHAR (100),
    level VARCHAR (100),
    category VARCHAR (100),
    color VARCHAR (255),
    url VARCHAR (255)
);

CREATE TABLE recurve (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR (100),
    drawWeight VARCHAR (100),
    drawLength VARCHAR (100),
    massWeight VARCHAR (100),
    speed VARCHAR (100),
    axle2axle VARCHAR (100),
    level VARCHAR (100),
    category VARCHAR (100),
    color VARCHAR (255),
    url VARCHAR (255)
);

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Xpedite NXT', '60, 70, 80', '24.5" - 30"', '4.74 lbs', '360 fps', '33"', 'advanced', 'hunting', 'Black, Tan, First Light Fusion, Kuiu Verde, Mossy Oak Country, Realtree Edge, Kryptek Altitude', 'https://psearchery.com/xpedite-nxt/');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Drive XL', '60, 70', '26.5 -32"', '3.9 lbs', '327-319 fps', '33"', 'advanced', 'hunting', 'Mossy Oak Country, Kuiu Verde, Black', 'https://psearchery.com/drive-xl/');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Drive SD', '40, 50', '22" - 25.5"', '3.7 lbs', '282 - 274 fps', '29.5"', 'beginner', 'hunting', 'Mossy Oak Country, Kuiu Verde, Black', 'https://psearchery.com/drive-sd/');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Citation', '50, 60', '28" - 33.5"', '5.2 lbs', '314 - 306 fps', '40"', 'intermediate', 'competition', 'White, Satin Mercury, Sky Blue, Platinum Titanium, Orange, Navy Blue, Good Vibes, Black, Black Cherry, American Flag', 'https://psearchery.com/citation/');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Perform X', '50, 60', '26.5" - 32"', '5.2 lbs', '332 - 324 fps', '40"', 'intermediate', 'competition', 'American Flag, Good Vibrations, Black Cherry, White, *Premium colors additional charge', 'https://psearchery.com/perform-x/');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Perform-X 3D', '50, 60', '25" - 30.5"', '5 lbs', '338-330 fps', '36"', 'advanced', 'competition', 'American Flag, Good Vibrations, Black Cherry, Navy Blue, White, *Premium colors additional charge', 'https://psearchery.com/perform-x3d/');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Centrix LD', '50, 60', '26.5" - 32"', '3.9 lbs', '327-319 fps', '33"', 'intermediate', 'competition', 'Platinum Titanium, Purple, Rose Gold, Black Cherry, White', 'https://psearchery.com/centrixld/');

INSERT INTO recurve(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('SATORI 17 RISER', 'Depends on the Limbs Purchased', 'Riser Length - 17"', '2.68 lbs', 'n/a', '60"', 'intermediate', 'hunting', 'Black Out, Storm', 'https://hoyt.com/recurve-bows/satori-risers');

INSERT INTO recurve(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Samick Little Fox', '21-30 lbs', 'n/a', '3 lbs', 'n/a', '58"', 'beginner', 'competition', 'White Oak, Dymondwood, and Maple', 'https://www.lancasterarchery.com/samick-little-fox-58-takedown-bow.html');

INSERT INTO recurve(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Scorpion', '40, 45, 50, 55, 60 lbs', 'n/a', '2 lbs 3 oz', 'n/s', '62"', 'advanced', 'hunting', 'Dark Wood', 'https://martinarchery.com/traditional-bows/damon-howatt-scorpion-recurve-bow/#buy');

INSERT INTO recurve(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Mamba', '35, 40, 45, 50, 55, 60, 65 lbs', 'n/a', '1 lb 14 oz', 'n/a', '58"', 'advanced', 'hunting', 'Cherry Oak', 'https://martinarchery.com/traditional-bows/damon-howatt-mamba-recurve-bow/');

INSERT INTO recurve(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Freedom', '25, 30, 35, 40, 45, 50, 55 lbs', 'n/a', '1 lb 12 oz', 'n/a', '60"', 'beginner', 'hunting', 'Dark Wood', 'https://martinarchery.com/traditional-bows/damon-howatt-freedom-recurve-bow/');

INSERT INTO recurve(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Independence', '25, 30, 35, 40, 45, 50, 55 lbs', 'n/a', '1 lb 12 oz', 'n/a', '52"', 'beginner', 'hunting', 'Cherry Oak', 'https://martinarchery.com/traditional-bows/damon-howatt-independence-recurve-bow/');

INSERT INTO recurve(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('', '', '', '', '', '', '', '', '', '');

INSERT INTO recurve(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('', '', '', '', '', '', '', '', '', '');