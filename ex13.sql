-- exercise 13

-- Add a dead column to person that's like the one in pet.
Alter table person add column dead integer;

-- Add a phone_number column to person.
alter table person add column phone_number text;

-- Add a salary column to person that is float.
alter table person add column salary float;

-- Add a dob column to both person and pet that is a DATETIME.
alter table person add column dob datetime;
alter table pet add column dob datetime;

-- Add a purchased_on column to person_pet of type DATETIME.
alter table person_pet add column purchased_on datetime;

-- Add a parent to pet table that's an INTEGER and holds the id for this pet's parent.
alter table pet add column parent integer;

-- Update the existing database records with the new column data using UPDATE statements. Don't forget about the purchased_on column in person_pet relation table to indicate when that person bought the pet.
update person set dob=12345, dead=0, phone_number="1 123 123 1234", salary=20.05;
update pet set dob=12345, parent=1;
update person_pet set purchased_on=123456;

-- Add 4 more people and 5 more pets and assign their ownership and what pet's are parents. On this last part remember that you get the id of the parent, then set it in the parent column.
insert into person (id, first_name, last_name, age, dead, phone_number, salary, dob) values
  (2, 'a', 'a', 14, 0, "12345678", 123.1, 12345),
  (3, 'a', 'a', 14, 0, "12345678", 123.1, 12345),
  (4, 'a', 'a', 14, 0, "12345678", 123.1, 12345),
  (5, 'a', 'a', 14, 0, "12345678", 123.1, 12345);
insert into pet (id, name, breed, age, dead, dob, parent) values
  (4, 'a', 'cat', 4, 0, 12345678, 5),
  (5, 'a', 'cat', 4, 0, 12345678, 5),
  (6, 'a', 'cat', 4, 0, 12345678, 5),
  (7, 'a', 'cat', 4, 0, 12345678, 5),
  (8, 'a', 'cat', 4, 0, 12345678, 5);
insert into person_pet (person_id, pet_id, purchased_on) values
  (5, 4, 123456),
  (5, 5, 123456),
  (5, 6, 123456),
  (5, 7, 123456),
  (5, 8, 123456);

-- Write a query that can find all the names of pets and their owners bought after 2004. Key to this is to map the person_pet based on the purchased_on column to the pet and parent.
select * from;

-- Write a query that can find the pets that are children of a given pet. Again look at the pet.parent to do this. It's actually easy so don't over think it.


