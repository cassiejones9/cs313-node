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

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('', '', '', '', '', '', '', '', '', '');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('', '', '', '', '', '', '', '', '', '');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('', '', '', '', '', '', '', '', '', '');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('', '', '', '', '', '', '', '', '', '');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('', '', '', '', '', '', '', '', '', '');

INSERT INTO compound(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('', '', '', '', '', '', '', '', '', '');

INSERT INTO recurve(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('SATORI 17 RISER', 'Depends on the Limbs Purchased', 'Riser Length - 17"', '2.68 lbs', 'n/a', '60"', 'intermediate', 'hunting', 'Black Out, Storm', 'https://hoyt.com/recurve-bows/satori-risers');

INSERT INTO recurve(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('Samick Little Fox', '21-30 lbs', 'n/a', '3 lbs', 'n/a', '58"', 'beginner', 'competition', 'White Oak, Dymondwood, and Maple', 'https://www.lancasterarchery.com/samick-little-fox-58-takedown-bow.html');

INSERT INTO recurve(name, drawweight, drawlength, massweight, speed, axle2axle, level, category, color, url) VALUES ('', '', '', '', '', '', '', '', '', '');