CREATE table author (
			author_id CHAR(2) PRIMARY KEY NOT NULL,
			lastname VARCHAR(15) NOT NULL,
			firstname VARCHAR(15) NOT NULL,
			email VARCHAR(40),
			city VARCHAR(15),
			country CHAR(2));
