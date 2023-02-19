# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding Database tables"

    puts "Seeding user data...."

        user1 = User.create!(username:"ombese",email_address:"newtonombese1@gmail.com",password:"mahalimzuri",password_confirmation:"mahalimzuri",role:"manager")

        user2 = User.create!(username:"irene",email_address:"irenenjuguna@gmail.com",password:"mahalimzuri",password_confirmation:"mahalimzuri",role:"client")  

        user3 = User.create!(username:"mutagah",email_address:"kihahumutagah@gmail.com",password:"mahalimzuri",password_confirmation:"mahalimzuri",role:"room_service")

        user4 = User.create!(username:"zamzam",email_address:"zamzamhassan@gmail.com",password:"mahalimzuri",password_confirmation:"mahalimzuri",role:"cook")

        user5 = User.create!(username:"guard",email_address:"leeguard@gmail.com",password:"mahalimzuri",password_confirmation:"mahalimzuri",role:"security") 

        user6 = User.create!(username:"ezra",email_address:"ezranjeru@gmail.com",password:"mahalimzuri",password_confirmation:"mahalimzuri",role:"client")


    puts "Seeding room type data and rooms data...."

        roomtype1= RoomType.create!(room_type:"Executive Size",description:"Ideally best suited for 5 guests, master ensuite for a couple, one twin bedroom and a single room.",
        room_label:"Exec",
        bedroom_capacity:5,
        number_of_rooms:5,
        price:145,
        parking:true,image1:"https://hotelgoldengrand.com/images/media/170814194446.3.jpg",image2:"https://hotelgoldengrand.com/images/media/170814194725.3.jpg",image3:"https://hotelgoldengrand.com/images/media/170814194639.3.jpg",image4:"https://hotelhennessis.com/wp-content/uploads/2015/12/Standard-Single-Room-Hotel-Hennessis-1.jpg",image5:"https://hotelgoldengrand.com/images/media/170814194733.3.jpg")
        
        roomtype2 = RoomType.create!(room_type:"King Size",description:"Ideally suited for a small couple with one small kid.",
        room_label:"Kin",bedroom_capacity:3,number_of_rooms:5,price: 135,parking:true,image1:"https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",image2:"https://images.squarespace-cdn.com/content/v1/57a0dbf5b3db2b31eb5fd34c/a239c599-6917-4181-ba02-21727ff289e3/Groskopt-bathroom-remodling-madison-wi-1-1.jpg",image3:"https://i.pinimg.com/originals/55/0a/b8/550ab820ce48b97bdeddbed0c09e2ce3.jpg",image4:"https://i.pinimg.com/originals/e1/c3/61/e1c361efb2037f0eed0e733c997a1b00.jpg",image5:"https://cdn.sandycove-hotel.co.uk/wp-content/uploads/2020/07/18095137/Sandy-Cove-Rooms-18-43-1024x683.jpg")

        roomtype3 = RoomType.create!(room_type:"Queen Size",description:"Ideally suited for a small couple with no kids.",bedroom_capacity:2,
        room_label:"Que",number_of_rooms:10,price: 130,parking:true,image1:"https://media.cnn.com/api/v1/images/stellar/prod/180117182024-club-deluxe-room-king.jpg?q=w_1600,h_900,x_0,y_0,c_fill",image2:"https://cf.bstatic.com/xdata/images/hotel/max1280x900/292057390.jpg?k=f130d8fce73ab813938e9c7dedef4a096b624d0efc81fe84a2e62502c30438b0&o=&hp=1",image3:"https://c4.wallpaperflare.com/wallpaper/274/668/983/fabulous-living-room-living-room-set-wallpaper-preview.jpg",image4:"https://www.turtlebayresort.com/sites/default/files/2022-04/Standard_Ocean_View_Double_Queen_Full_Balcony_web.jpg",image5:"https://pix10.agoda.net/hotelImages/116/1165593/1165593_16030311190040420968.jpg?ca=6&ce=1&s=1024x768")

        roomtype4 = RoomType.create!(room_type:"Twin Size",description:"The room has two single beds for double occupancy. An extra bed may be added to this room at the request of a guest and charged accordingly. Here the bed size is normally 3 feet by 6 feet. These rooms are suitable for sharing accommodation among a group of delegates meeting.",room_label:"Twn",bedroom_capacity:4,number_of_rooms:20,price: 100,parking:true,image1:"https://st2.depositphotos.com/3386033/9243/i/450/depositphotos_92434730-stock-photo-elegant-hotel-twin-bedroom.jpg",image2:"https://s7d2.scene7.com/is/image/ritzcarlton/chirz-guestroom-bathroom-50726227?$XlargeViewport100pct$",image3:"https://www.lannatreehotelchiangmai.com/system/images/gallery/deluxe-twin-room4.jpg",image4:"https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/balcony-ideas-050916-ed-kathleenmccormick-office-079-1619811794.jpg",image5:"https://www.hotel-deparis-cannes.com/wp-content/uploads/cache/images/remote/www-hotel-deparis-cannes-com/  Hotel-Cannes-de-Paris-chambre-Balcon-8-1024x683--1718086593.jpg")

        roomtype5 = RoomType.create!(room_type:"Single Size",description:"A room assigned to one person. May have one or more beds. The room size or area of Single Rooms are generally between 37m² to 45m²",room_label:"Sigl",bedroom_capacity:1,number_of_rooms:20,price: 75,parking:false,image1:"https://www.crescenthoteloflondon.com/content/uploads/2021/11/Crescent-hotel-single-with-shower-2-final.jpg",image2:"https://www.parkcentraal.com/wp-content/uploads/2020/10/park-centraal-den-haag-rooms-comfort-single-3-1.jpg",image3:"https://ashleyfurniture.scene7.com/is/image/AshleyFurniture/H600001145_1?%24AFHS-PDP-Zoomed%24",image4:"https://images.yen.com.gh/images/dc8b9f4ba08ebd48.jpg?imwidth=900",image5:"https://media-cdn.tripadvisor.com/media/photo-s/15/57/af/7a/single-room-closet.jpg")

        
    puts "Seeding room booking sample data ..."

    # This is dummy data but a room in bad condition should not be booked.

        booking1 = UserRoomBooking.create!(user_id:user2.id,room_id:rand(11..20),number_of_adults:2,number_of_kids:0,booking_date:"2023-05-12T10:00",check_out_date:"2023-05-14T10:00")

            booking1a = UserRoomBooking.create!(user_id:user3.id,room_id:booking1.room.id,number_of_adults:2,number_of_kids:0,booking_date:"2023-05-12T10:00",check_out_date:"2023-05-14T10:00")


        booking2 = UserRoomBooking.create!(user_id:user6.id,room_id:rand(41..60),number_of_adults:1,number_of_kids:0,booking_date:"2023-05-12T12:00",check_out_date:"2023-05-15T10:00")

        booking3 = UserRoomBooking.create!(user_id:user2.id,room_id:rand(6..10),number_of_adults:2,number_of_kids:1,booking_date:"2023-02-14T10:00",check_out_date:"2023-02-16T10:00")

        booking4 = UserRoomBooking.create!(user_id:user6.id,room_id:rand(21..40),number_of_adults:3,number_of_kids:1,booking_date:"2023-02-26T10:00",check_out_date:"2023-03-04T10:00")

        booking5 = UserRoomBooking.create!(user_id:user2.id,room_id:rand(1..5),number_of_adults:3,number_of_kids:2,booking_date:"2023-05-01T08:00",check_out_date:"2023-05-01T10:00")

    puts "Seeding meals data ...."

        meal1 = Meal.create!(meal_type:"breakfast",meal_name:"French toast & fried eggs",meal_price:2000,description:"Kienyeji eggs fried and some  yummy staple crepes") 

        meal2 = Meal.create!(meal_type:"Brunch",meal_name:"Quiche",meal_price:200,description:"Made of eggs,dairy and filling from ham and cheddar") 

        meal3 = Meal.create!(meal_type:"Lunch",meal_name:"Burrito Bowl",meal_price:700,description:"Combination of vegetables and avocado yummy and sweet") 

        meal4 = Meal.create!(meal_type:"Dinner",meal_name:"Rice paper rolls",meal_price:450,description:"Pure bishori rice from mwea,Kenya cooked by our professional chefs") 

        meal5 = Meal.create!(meal_type:"Super",meal_name:"Vegetable Salad",meal_price:2000,description:"Purely made of fresh vegetables for the vegeterians")
         
    puts "Seeding user meal booking data ...."

        usermealbooking1 = UserMealBooking.create!(user_id:user2.id,meal_id:rand(1..5),booking_type: "online", booking_date: "2023-05-12T10:00",quantity:4,total_price:(meal1.id * 1))

        usermealbooking2 = UserMealBooking.create!(user_id:user2.id,meal_id:rand(1..5),booking_type: "direct", booking_date: "2019-05-12T10:00",quantity:1,total_price:(meal1.id * 1))

        usermealbooking3 = UserMealBooking.create!(user_id:user2.id,meal_id:rand(1..5),booking_type: "offline", booking_date: "2020-05-12T10:00",quantity:3,total_price:(meal1.id * 1))

        usermealbooking4 = UserMealBooking.create!(user_id:user2.id,meal_id:rand(1..5),booking_type: "online", booking_date: "2021-05-12T10:00",quantity:5,total_price:(meal1.id * 1))

        usermealbooking5 = UserMealBooking.create!(user_id:user2.id,meal_id:rand(1..5),booking_type: "offline", booking_date: "2022-05-12T10:00",quantity:3,total_price:(meal1.id * 1))
       
puts "End of seeding data!"

