10.times do 
  Listing.create(
    name: Faker::Creature::Dog.name, 
    breed: Faker::Creature::Dog.breed,
  )
end 