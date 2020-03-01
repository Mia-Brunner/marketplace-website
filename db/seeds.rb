
  user1 = User.create(email: 'test-user1@event.com', password: 'password'),
  

      Profile.create(
      name: "meng",
      location: "limmy", 
      contact: "05045454545",
      description: 'cool guy',
      user_id: user1.id
      )      
  