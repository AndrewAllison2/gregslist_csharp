CREATE TABLE
    IF NOT EXISTS accounts(
        id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
        name varchar(255) COMMENT 'User Name',
        email varchar(255) COMMENT 'User Email',
        picture varchar(255) COMMENT 'User Picture'
    ) default charset utf8 COMMENT '';

-- FIXME maybe we need to change something

CREATE TABLE
    capybaras(
        id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(10) NOT NULL COMMENT 'The name of our cute little dudes',
        ownedByGrandma BOOLEAN DEFAULT true COMMENT 'Keeps track of if this cute little dude was owned by a cute little grandma',
        birthday DATE NOT NULL,
        applesEaten SMALLINT UNSIGNED DEFAULT 0,
        livesAtFarm BOOLEAN NOT NULL DEFAULT FALSE
    ) default charset utf8 COMMENT '';

DROP TABLE capybaras;

ALTER TABLE capybaras
ADD
    livesAtFarm BOOLEAN NOT NULL DEFAULT FALSE;

INSERT INTO
    capybaras (
        name,
        ownedByGrandma,
        birthday,
        applesEaten
    )
VALUES (
        'Cappy',
        true,
        '1990-12-24',
        5000
    ), (
        'Tippy Toes',
        false,
        '2012-01-01',
        3
    );

SELECT name FROM capybaras;

SELECT name, applesEaten FROM capybaras;

SELECT * FROM capybaras;

SELECT * FROM capybaras WHERE name = 'Cappy';

SELECT * FROM capybaras WHERE name LIKE '%cap%';

SELECT * FROM capybaras WHERE id = 3;

SELECT * FROM capybaras LIMIT 1 OFFSET 1;

DELETE FROM capybaras WHERE id = 2 LIMIT 1 ;

UPDATE capybaras SET applesEaten = 9999 WHERE id = 3 LIMIT 1 ;

CREATE TABLE
    cars(
        id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        make VARCHAR(255) NOT NULL,
        model VARCHAR(300) NOT NULL,
        color VARCHAR(100) DEFAULT 'blue',
        year SMALLINT UNSIGNED DEFAULT 1990,
        price DECIMAL NOT NULL,
        ownedByGrandma BOOLEAN DEFAULT FALSE,
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update'
    ) default charset utf8 COMMENT '';

DROP TABLE cars;

INSERT INTO
    cars (
        make,
        model,
        color,
        year,
        ownedByGrandma,
        price
    )
VALUES (
        'mazda',
        'miata',
        'red',
        1996,
        true,
        6000
    );

SELECT LAST_INSERT_ID();


-- SECTION GREGSLIST AFTERNOON

CREATE TABLE
    houses(
        id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        sqft INT NOT NULL,
        bedrooms INT NOT NULL,
        bathrooms INT NOT NULL,
        imgUrl VARCHAR (255) NOT NULL,
        description VARCHAR(255) NOT NULL,
        price INT NOT NULL,
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Time last updated'
    ) default charset utf8 COMMENT '';


    INSERT INTO
    houses(
        sqft, bedrooms, bathrooms, imgUrl, description, price)
        VALUES
        (
            1800,
            3,
            2,
            'https://images.unsplash.com/photo-1600585154340-be6161a56a0c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aG91c2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
            'A big ol house',
            250000
        ), (
            200,
            1,
            1,
            'https://media.istockphoto.com/id/97049368/photo/cardbord-box.webp?b=1&s=170667a&w=0&k=20&c=_xL2EfgEpFcYGEagBfcP3zG33k6G4qHMU4b1e-7BC4Y=',
            'Affordable housing nowadays',
            150000
        );

SELECT * FROM houses;

SELECT LAST_INSERT_ID();


-- SECTION JOBS 

CREATE TABLE
    jobs(
        id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        title VARCHAR(155) NOT NULL,
        description VARCHAR(255) NOT NULL,
        salary INT NOT NULL,
        isFullTime BOOLEAN DEFAULT true,
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Time last updated'
    ) default charset utf8 COMMENT '';