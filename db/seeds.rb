# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


cats = [
  {
     name: "Candy", 
     description: "candy is good", 
     gender: "Male", 
     size: 10, 
     color: "tan", 
     birth_date: "2010/11/15"
  },  
  {
     name: "Randy", 
     description: "randy is good", 
     gender: "Male", 
     size: 10, 
     color: "tan", 
     birth_date: "2010/11/15"
  },  
  {
     name: "Steve", 
     description: "steve is good", 
     gender: "Male", 
     size: 10, 
     color: "tan", 
     birth_date: "2010/11/15"
  },  
  {
     name: "Michelle", 
     description: "michelle is good", 
     gender: "Male", 
     size: 10, 
     color: "tan", 
     birth_date: "2010/11/15"
  },  
  {
     name: "Bella", 
     description: "bella is good", 
     gender: "Male", 
     size: 10, 
     color: "tan", 
     birth_date: "2010/11/15"
  } 
] 


Cat.destroy_all

Cat.create(cats)