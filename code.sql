drop table person;
drop table pet;
drop table person_pet;

create table person (
	id integer primary key,
	first_name text,
	last_name text,
	age integer
);

create table pet (
	id integer primary key,
	name text,
	breed text,
	age integer,
	dead integer
);

create table person_pet (
	person_id integer,
	pet_id integer
);
insert into person (id, first_name, last_name, age)
	values (0, 'zed', 'shaw', 37);
insert into person (id, first_name, last_name, age)
	values (1, 'harry', 'moreno', 26);

insert into pet (id, name, breed, age, dead)
	values (0, 'fluffy', 'unicorn', 1000, 0);
insert into pet (id, name, breed, age, dead)
	values (1, 'foo', 'foo', 10, 1);
insert into pet (id, name, breed, age, dead)
	values (2, 'bar', 'bar', 50, 0);

insert into pet values (1, 'gigantor', 'robot', 1, 1);
insert into person_pet values (0, 0);
insert into person_pet values (0, 1);
insert into person_pet values (1, 1);
insert into person_pet values (1, 2);
select * from person;
select name, age from pet;
select name, age from pet where dead = 0;
select * from person where first_name != 'zed';
select pet.id, pet.name, pet.age, pet.dead
from pet, person_pet, person
where
	pet.id = person_pet.pet_id and
	person_pet.person_id = person.id and
	person.first_name = 'zed';

select name, age from pet where dead = 1;

delete from pet where dead = 1;

select * from pet;

insert into pet values (1, 'gigantor', 'robot', 1, 0);

select * from pet;
