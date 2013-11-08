user1 = User.create( email: "michael@gmail.com", 
                     password: "password", 
                     phone_number: "555-555-5555", 
                     name: "Michael", 
                     customer_id: "489478274" )



home_fridge = user1.fridges.create(name: "Home")
home_fridge.items.create([{ name: "Milk", category: "Dairy"}, 
                          { name: "Orange Juice", category: "Beverage" }, 
                          { name: "Lettuce", category: "Produce" },
                          { name: "Paprika", category: "Spice" },
                          { name: "Turkey", category: "Deli Meat"}])

thanksgiving_fridge = user1.fridges.create(name: "Thanksgiving Dinner")
thanksgiving_fridge.items.craete([{ name: "Turkey", category: "Poultry" },
                                  { name: "Butter", category: "Dairy" },
                                  { name: "Corn", category: "Vegetable"}]),
                                  { name: "Corn", category: "Vegetable"}]),

user2 = User.create( email: "liz@gmail.com", 
                     password: "cookie", 
                     phone_number: "555-555-5555", 
                     name: "Elizabeth", 
                     customer_id: "673198357" )


