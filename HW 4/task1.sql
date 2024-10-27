DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

DROP TABLE IF EXISTS petPet, petEvent;

CREATE TABLE petPet (
  petname VARCHAR(20) PRIMARY KEY,
  owner VARCHAR(45),
  species CHAR(1) CHECK (species IN ('M', 'F')),
  gender CHAR(1),
  birth DATE,
  death DATE
);

CREATE TABLE petEvent (
  petname VARCHAR(20),
  eventdate DATE,
  eventtype VARCHAR(20),
  remark VARCHAR(255),
  FOREIGN KEY (petname) REFERENCES petPet(petname)
);

INSERT INTO petPet (petname, owner, species, gender, birth, death) VALUES
    ("Fluffy", "Harold", "M", "F", "1993-02-04", NULL),
    ("Claws", "Gwen", "M", "M", "1994-03-17", NULL),
    ("Buffy", "Harold", "M", "F", "1989-05-13", NULL),
    ("Fang", "Benny", "M", "M", "1990-08-27", NULL),
    ("Bowser", "Diane", "M", "M", "1979-08-31", "1995-07-29"),
    ("Chirpy", "Gwen", "M", "F", "1998-09-11", NULL),
    ("Whistler", "Gwen", "M", NULL, "1997-12-09", NULL),
    ("Slim", "Benny", "M", "M", "1996-04-29", NULL),
    ('Puffball', 'Diane', 'M', 'F', '1999-03-30', NULL);

INSERT INTO petEvent (petname, eventdate, eventtype, remark) VALUES
    ("Fluffy", "1995-05-15", "litter", "4 kittens, 3 female, 1 male"),
    ("Buffy", "1993-06-23", "litter", "5 puppies, 2 female, 3 male"),
    ("Buffy", "1994-06-19", "litter", "3 puppies, 3 female"),
    ("Chirpy", "1999-03-21", "vet", "needed beak straightened"),
    ("Slim", "1997-08-03", "vet", "broken rib"),
    ("Slim", "1997-10-04", "vet", "broken tooth"),
    ("Bowser", "1991-10-12", "kennel", NULL),
    ("Fang", "1991-10-12", "kennel", NULL),
    ("Fang", "1998-08-28", "birthday", "Gave him a new chew toy"),
    ("Claws", "1998-03-17", "birthday", "Gave him a new flea collar"),
    ("Whistler", "1998-12-09", "birthday", "First birthday");
