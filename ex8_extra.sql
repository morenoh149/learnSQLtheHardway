/* delete any dead pets owned by you */
delete from pet where id in (
	select pet.id
	from pet, person_pet, person
	where
	person.first_name = 'harry' and
	person.id = person_pet.person_id and
	pet.id = person_pet.pet_id
);

/* delete people who have dead pets */

/* remove dead pets from person_pet */
