INSERT INTO animals VALUES (1,'Agumon','3/2/2020',0,TRUE,10.23);
INSERT INTO animals VALUES (2,'Gabumon','2020/09/15',2,TRUE,8);
INSERT INTO animals VALUES (3,'Pikachu','2021/01/07',1,FALSE,15.04);
INSERT INTO animals VALUES (4,'Devimon','2017/05/12',5,TRUE,11);

INSERT INTO animals VALUES (5,'Charmander','2020/02/08',0,FALSE,-11);
INSERT INTO animals VALUES (6,'Plantmon','2021/11/15',2,TRUE,-5.7);
INSERT INTO animals VALUES (7,'Squirtle','1993/04/02',3,FALSE,-12.13);
INSERT INTO animals VALUES (8,'Angemon','2005/06/12',1,TRUE,-45);
INSERT INTO animals VALUES (9,'Boarmon','2005/06/07',7,TRUE,20.4);
INSERT INTO animals VALUES (10,'Blossom','1998/10/13',3,TRUE,17);
INSERT INTO animals VALUES (11,'Ditto','2022/05/14',4,TRUE,22);

-- Insert the following data into the `owners` table:
  -- Sam Smith 34 years old.
  -- Jennifer Orwell 19 years old.
  -- Bob 45 years old.
  -- Melody Pond 77 years old.
  -- Dean Winchester 14 years old.
  -- Jodie Whittaker 38 years old.
INSERT INTO owners
  (full_name,age)
    VALUES
      ('Sam Smith', 34),
      ('Jennifer Orwell', 19),
      ('Bob', 45),
      ('Melody Pond', 77),
      ('Dean Winchester', 14),
      ('Jodie Whittaker', 38);
-- Insert the following data into the `species` table:
  -- Pokemon
  -- Digimon
  INSERT INTO species
    (name)
      VALUES
        ('Pokemon'),
        ('Digimon');
-- Modify your inserted animals so it includes the species_id value:
  -- If the name ends in "mon" it will be Digimon
  UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
  -- All other animals are Pokemon
  UPDATE animals SET species_id = 1 WHERE name NOT LIKE '%mon';
-- Modify your inserted animals to include owner information (owner_id):
  -- Sam Smith owns Agumon.
  -- Jennifer Orwell owns Gabumon and Pikachu.
  -- Bob owns Devimon and Plantmon.
  -- Melody Pond owns Charmander, Squirtle, and Blossom.
  -- Dean Winchester owns Angemon and Boarmon. 
  UPDATE animals
    SET owner_id = CASE
      WHEN name = 'Agumon' THEN 1
      WHEN name = 'Gabumon' OR name = 'Pikachu' THEN 2
      WHEN name = 'Devimon' OR name = 'Plantmon' THEN 3
      WHEN name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom' THEN 4
      WHEN name = 'Angemon' OR name = 'Boarmon' THEN 5
    END;