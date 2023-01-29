# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding Database tables"

    puts "Seeding user data...."

user = User.create([
    {username:"ombese",email_address:"newtonombese1@gmail.com",password:"mahalimzuri",password_confirmation:"mahalimzuri",role:"manager"},
    {username:"irene",email_address:"irenenjuguna@gmail.com",password:"mahalimzuri",password_confirmation:"mahalimzuri",role:"client"},
    {username:"mutagah",email_address:"kihahumutagah@gmail.com",password:"mahalimzuri",password_confirmation:"mahalimzuri",role:"room_service"},
    {username:"zamzam",email_address:"zamzamhassan@gmail.com",password:"mahalimzuri",password_confirmation:"mahalimzuri",role:"cook"},
    {username:"guard",email_address:"leeguard@gmail.com",password:"mahalimzuri",password_confirmation:"mahalimzuri",role:"security"},
    {username:"ezra",email_address:"ezranjeru@gmail.com",password:"mahalimzuri",password_confirmation:"mahalimzuri",role:"client"}
])

puts "End of seeding data!"

