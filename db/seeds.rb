# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = ["Cycling", "Golf", "Tennis", "Soccer", "Hiking","Cricket","Running","Basketball"]

if Category.count == 0 
    categories.each do |c| 
      Category.create(name: c)
      puts "created #{c} category"
    end
end 
if Activity.count == 0 
    
      Activity.create(category_id:1, title:"Cycling in Yarra Valley", date_time:"30/07/2022 09:00", location:"Roundabout the Basin, Vic", description:"This is a pleasant Activity for people of all ages", user_id:1, cost:0, quantity_limit:0)
      Activity.create(category_id:1, title:"Cycling for Seniors", date_time:"30/08/2022 10:00", location:"Melbourne City", description:"Great Activity for seniors during Winter", user_id:2, cost:50, quantity_limit:100)
      Activity.create(category_id:1, title:"Youth Cycling", date_time:"1/11/2022 09:00", location:"Dandenong Ranges", description:"Challenging Ride for people who want to explore their limits", user_id:3, cost:120, quantity_limit:200)
      Activity.create(category_id:2, title:"Golf at Toorak", date_time:"30/07/2022 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
      Activity.create(category_id:2, title:"Golf at Mornington", date_time:"30/08/2022 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
      Activity.create(category_id:2, title:"Ladies Golf", date_time:"1/11/2022 09:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
      Activity.create(category_id:3, title:"Tennis on Grass", date_time:"30/07/2022 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
      Activity.create(category_id:3, title:"Tennis on Clay", date_time:"30/08/2022 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
      Activity.create(category_id:3, title:"Tennis on HardCourts", date_time:"1/11/2022 09:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
      Activity.create(category_id:4, title:"Soccer at Toorak", date_time:"30/07/2022 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
      Activity.create(category_id:4, title:"Soccer at Mornington", date_time:"30/08/2022 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
      Activity.create(category_id:4, title:"Ladies Soccer", date_time:"1/11/2022 09:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
      Activity.create(category_id:5, title:"Hiking at Toorak", date_time:"30/07/2022 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
      Activity.create(category_id:5, title:"Hiking at Mornington", date_time:"30/08/2022 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
      Activity.create(category_id:5, title:"Ladies Hiking", date_time:"1/11/2022 09:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
      Activity.create(category_id:6, title:"Cricket at Toorak", date_time:"30/07/2022 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
      Activity.create(category_id:6, title:"Cricket at Mornington", date_time:"30/08/2022 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
      Activity.create(category_id:6, title:"Ladies Cricket", date_time:"1/11/2022 09:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
      Activity.create(category_id:7, title:"Running at Toorak", date_time:"30/07/2022 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
      Activity.create(category_id:7, title:"Running at Mornington", date_time:"30/08/2022 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
      Activity.create(category_id:7, title:"Ladies Running", date_time:"1/11/2022 09:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
      Activity.create(category_id:8, title:"Basketball at Toorak", date_time:"30/07/2022 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
      Activity.create(category_id:8, title:"Basketball at Mornington", date_time:"30/08/2022 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
      Activity.create(category_id:8, title:"Ladies Basketball", date_time:"1/11/2022 09:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
      
end 
##Activity.create(category_id:1, title: "cool")

if User.count == 0 
    User.create(first_name:"John",last_name:"Jacob", email:"john@email.com", password: "123")
    User.create(first_name:"Mary",last_name:"Stevens", email:"mary@email.com", password: "123")
    User.create(first_name:"Bob",last_name:"Thomas", email:"bob@email.com", password: "123")
    User.create(first_name:"Jane",last_name:"Boyle", email:"jane@email.com", password: "123")

end