-- change name back to zed for person.id=1
update person set first_name="Zed"
	where person.id=1;

-- rename dead animals to DECEASED
update pet set name="DECEASED"
	where dead=1;

-- do same with subquery
update pet set name="DECEASED"
	where id in (
		select pet.id
		from pet
		where dead=1
);
