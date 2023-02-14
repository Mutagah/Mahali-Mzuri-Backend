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

    {room_type:"Twin Size",room_description:"The room has two single beds for double occupancy. An extra bed may be added to this room at the request of a guest and charged accordingly. Here the bed size is normally 3 feet by 6 feet. These rooms are suitable for sharing accommodation among a group of delegates meeting.",room_number:"Twn001",bedroom_capacity:4,parking:true,room_image1:"https://st2.depositphotos.com/3386033/9243/i/450/depositphotos_92434730-stock-photo-elegant-hotel-twin-bedroom.jpg",room_image2:"https://s7d2.scene7.com/is/image/ritzcarlton/chirz-guestroom-bathroom-50726227?$XlargeViewport100pct$",room_image3:"https://www.lannatreehotelchiangmai.com/system/images/gallery/deluxe-twin-room4.jpg",room_image4:"https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/balcony-ideas-050916-ed-kathleenmccormick-office-079-1619811794.jpg",room_image5:"https://www.hotel-deparis-cannes.com/wp-content/uploads/cache/images/remote/www-hotel-deparis-cannes-com/Hotel-Cannes-de-Paris-chambre-Balcon-8-1024x683--1718086593.jpg",room_price: 100 },

    {room_type:"Single Size",room_description:"A room assigned to one person. May have one or more beds. The room size or area of Single Rooms are generally between 37m² to 45m²",room_number:"Sig001",bedroom_capacity:1,parking:false,room_image1:"https://www.crescenthoteloflondon.com/content/uploads/2021/11/Crescent-hotel-single-with-shower-2-final.jpg",room_image2:"https://www.parkcentraal.com/wp-content/uploads/2020/10/park-centraal-den-haag-rooms-comfort-single-3-1.jpg",room_image3:"https://ashleyfurniture.scene7.com/is/image/AshleyFurniture/H600001145_1?%24AFHS-PDP-Zoomed%24",room_image4:"https://images.yen.com.gh/images/dc8b9f4ba08ebd48.jpg?imwidth=900",room_image5:"https://media-cdn.tripadvisor.com/media/photo-s/15/57/af/7a/single-room-closet.jpg",room_price: 75}
])

puts "End of seeding data!"

