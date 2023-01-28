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
    {email_address:"newtonombese1@gmail.com",password:"mahalimzuri",role:"manager"},
    {email_address:"irenenjuguna@gmail.com",password:"mahalimzuri",role:"client"},
    {email_address:"kihahumutagah@gmail.com",password:"mahalimzuri",role:"room_service"},
    {email_address:"zamzamhassan@gmail.com",password:"mahalimzuri",role:"cook"},
    {email_address:"leeguard@gmail.com",password:"mahalimzuri",role:"security"},
    {email_address:"ezranjeru@gmail.com",password:"mahalimzuri",role:"client"}
])

puts "End of seeding data!"

