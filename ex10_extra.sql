-- rename only dead pets zed owns to "Zed's Dead Pet"

update pet set name = "Zed's Dead Pet" where id in (
  select pet.id
  from pet, person_pet, person
  where
  person.id = person_pet.person_id and
  pet.id = person_pet.pet_id and
  person.first_name = "Zed" and
  pet.dead = 1
);

-- 
