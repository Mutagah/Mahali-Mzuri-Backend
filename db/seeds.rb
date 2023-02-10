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

    puts "Seeding rooms data...."

rooms = Room.create([
    {room_type:"Executive Size",room_description:"Ideally best suited for 5 guests, master ensuite for a couple, one twin bedroom and a single room.",room_number:"Exec001",bedroom_capacity:5,parking:true,room_image1:"https://hotelgoldengrand.com/images/media/170814194446.3.jpg",room_image2:"https://hotelgoldengrand.com/images/media/170814194725.3.jpg",room_image3:"https://hotelgoldengrand.com/images/media/170814194639.3.jpg",room_image4:"https://hotelhennessis.com/wp-content/uploads/2015/12/Standard-Single-Room-Hotel-Hennessis-1.jpg",room_image5:"https://hotelgoldengrand.com/images/media/170814194733.3.jpg",room_price:145},

    {room_type:"King Size",room_description:"Ideally suited for a small couple with one small kid.",room_number:"Kin001",bedroom_capacity:3,parking:true,room_image1:"https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",room_image2:"https://images.squarespace-cdn.com/content/v1/57a0dbf5b3db2b31eb5fd34c/a239c599-6917-4181-ba02-21727ff289e3/Groskopt-bathroom-remodling-madison-wi-1-1.jpg",room_image3:"https://i.pinimg.com/originals/55/0a/b8/550ab820ce48b97bdeddbed0c09e2ce3.jpg",room_image4:"https://i.pinimg.com/originals/e1/c3/61/e1c361efb2037f0eed0e733c997a1b00.jpg",room_image5:"https://cdn.sandycove-hotel.co.uk/wp-content/uploads/2020/07/18095137/Sandy-Cove-Rooms-18-43-1024x683.jpg",room_price: 135},

    {room_type:"Queen Size",room_description:"Ideally suited for a small couple with no kids.",room_number:"Que001",bedroom_capacity:2,parking:true,room_image1:"https://media.cnn.com/api/v1/images/stellar/prod/180117182024-club-deluxe-room-king.jpg?q=w_1600,h_900,x_0,y_0,c_fill",room_image2:"https://cf.bstatic.com/xdata/images/hotel/max1280x900/292057390.jpg?k=f130d8fce73ab813938e9c7dedef4a096b624d0efc81fe84a2e62502c30438b0&o=&hp=1",room_image3:"https://c4.wallpaperflare.com/wallpaper/274/668/983/fabulous-living-room-living-room-set-wallpaper-preview.jpg",room_image4:"https://www.turtlebayresort.com/sites/default/files/2022-04/Standard_Ocean_View_Double_Queen_Full_Balcony_web.jpg",room_image5:"https://pix10.agoda.net/hotelImages/116/1165593/1165593_16030311190040420968.jpg?ca=6&ce=1&s=1024x768",room_price: 130},

    # {room_type:"Twin Size",room_description:"",room_number:"Twn001",bedroom_capacity:4,parking:true,room_image1:"",room_image2:"",room_image3:"",room_image4:"",room_image5:"",room_price: },

    # {room_type:"Single Size",room_description:"",room_number:"Sig001",bedroom_capacity:1,parking:false,room_image1:"",room_image2:"",room_image3:"",room_image4:"",room_image5:"",room_price: }
])

puts "End of seeding data!"

