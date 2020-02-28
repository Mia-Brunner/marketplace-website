users = [
  user1 = User.create(email: 'test-user1@event.com', password: 'password'),
  user2 = User.create(email: 'test-user2@event.com', password: 'password'),
  user3 = User.create(email: 'test-user3@event.com', password: 'password')
  ]
  users.each do |user|
    2.times do
      Listing.create(
      name: Faker::Creature::Dog.name,
      breed: Faker::Creature::Dog.breed, 
      price: Faker::Number.digit,
      documentation: Faker::Quote.famous_last_words,
      description: Faker::Quote.matz,
      user_id: user1.id
      )
    end
    2.times do
      Listing.create(
      name: Faker::Creature::Dog.name,
      breed: Faker::Creature::Dog.breed, 
      price: Faker::Number.digit,
      documentation: Faker::Quote.famous_last_words,
      description: Faker::Quote.matz,
      user_id: user2.id
      )
    end
    2.times do
      Listing.create(
      name: Faker::Creature::Dog.name,
      breed: Faker::Creature::Dog.breed, 
      price: Faker::Number.digit,
      documentation: Faker::Quote.famous_last_words,
      description: Faker::Quote.matz,
      user_id: user3.id
      )
    end
  end