10.times do 
  Listing.create(
    name: Faker::Creature::Dog.name
  )
end 