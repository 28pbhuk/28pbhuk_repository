USE pet_database;

INSERT INTO petEvent (petname, eventdate, eventtype, remark) VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');

INSERT INTO petPet (petname, owner, species, gender, birth, death) VALUES ('Hammy', 'Diane', 'M', 'M', '2010-10-30', NULL);
INSERT INTO petEvent (petname, eventdate, eventtype, remark) VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics');

INSERT INTO petEvent (petname, eventdate, eventtype, remark) VALUES ('Fluffy', '2020-10-15', 'litter', '5 kittens, 2 male');

UPDATE petEvent SET remark = 'broken rib' WHERE petname = 'Claws' AND eventdate = '1997-08-03';

UPDATE petPet SET death = '2020-09-01' WHERE petname = 'Puffball';

DELETE FROM petPet WHERE petname = 'Buffy' AND owner = 'Harold';
