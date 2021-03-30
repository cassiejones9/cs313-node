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

INSERT INTO recurve(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Wolverine', '40, 45, 50 lbs', 'n/a', 'n/a', 'n/a', '62"', 'beginner', 'competition', 'Maple', 'https://beararchery.com/bows/wolverine-arb16240r');

INSERT INTO recurve(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Spyder Takedown', '20, 25, 29, 35, 40, 45, 50, 55, 60 lbs', 'n/a', 'n/a', 'n/a', '62"', 'intermediate', 'competition', 'White Oak, Dymond Wood, Padouk', 'https://www.southwestarcheryusa.com/collections/all-bows/products/southwest-archery-spyder-62-takedown-recurve-bow-parent-1?variant=217106546704');

INSERT INTO recurve(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Arcos Riser', '40, 45, 50, 55 lbs', 'n/a', '3 lbs', 'n/a', '25" Riser Length', 'advanced', 'competition', 'Lava Red, Pitch Black, White Lightning, Electric Blue, Smoke Gray', 'https://hoyt.com/recurve-bows/arcos');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Supra Focus XL LD', '50, 60', '28" - 33.5"', '5.3 lbs', '312-304 fps', '40"', 'intermediate', 'competition', 'American Flag, Good Vibrations, Black Cherry, White, Navy Blue, Black, Platinum Titanium, *Sky Blue, *Orange, *Satin Mercury, *Premium colors additional charge', 'https://psearchery.com/suprafocus-xl-ld/');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Supra Focus', '50, 60', '26" - 31.5"', '4.7 lbs', '326-318 fps', '37"', 'advanced', 'competition', 'American Flag, Good Vibrations, Black Cherry, White, Navy Blue, Black, Platinum Titanium, *Sky Blue, *Orange, *Satin Mercury, *Premium colors additional charge', 'https://psearchery.com/suprafocus/');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Bandit NXT', '40, 50', '20.5" - 26"', '3.7 lbs', '307 - 299 fps', '28"', 'beginner', 'competition', 'Kuiu Verde, Mossy Oak Country, First Lite Fusion, RealTree Edge, Black, Tan', 'https://psearchery.com/bandit-nxt/');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Evo NXT 33', '50, 60, 65, 70, 80', '26.5" - 31.5"', '4.5 lbs', '322 - 314 fps', '33"', 'beginner', 'competition', 'Mossy Oak Country, Kuiu Verde, First Lite Fusion, RealTree Edge, Black, Tan', 'https://psearchery.com/evo-nxt-33/');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Carbon Air Stealth Mach 1', '50, 60, 65, 70, 80', '25" - 30.5"', '3.5 lbs', '332 - 324 fps', '32"', 'beginner', 'hunting', 'Black, Kuiu Verde, Mossy Oak Country, First Lite Fusion', 'https://psearchery.com/carbon-air-stealth-mach-1/');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Prima', '40, 50, 60', '21.5" - 27.5"', '3.93 lbs', '321 fps', '30"', 'intermediate', 'hunting', 'First Lite Specter, Under Armor, Realtree Edge, Green Ambush, Stone, Black, Optifade Subalpine, Optifade Elevated II', 'https://www.mathewsinc.com/product/prima/');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Monster Safari', '70, 85', '25.5" - 31"', '4.8 lbs', '350 fps', '33', 'advanced', 'hunting', 'Black', 'https://www.mathewsinc.com/product/monster-safari/');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('', '', '', '', '', '', '', '', '', '');