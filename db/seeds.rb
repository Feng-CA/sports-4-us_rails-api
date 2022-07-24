# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = ["Cycling", "Golf", "Tennis", "Soccer", "Hiking","Cricket","Running","Basketball"]
#accounts = ["Member", "Organiser", "Admin"]

if Account.count == 0 
  Account.create(name: "Member")
  Account.create(name: "Organiser")
  Account.create(name: "Admin")
end 

if Category.count == 0 
    categories.each do |c| 
      Category.create(name: c)
      puts "created #{c} category"
    end
end 


if Profile.count == 0

  Profile.create(user_id:1, location:"Melbourne", contact_no:"0475897564", emergency_contact:"Jake", emergency_contact_no: "04705364756", cycling:false, golf:true, tennis:false, soccer:true, hiking:false, cricket:true, running:false, basketball:true, account_id: 1 )
  Profile.create(user_id:2, location:"Sydney", contact_no:"0475897564", emergency_contact:"Sandy", emergency_contact_no: "04705364756", cycling:true, golf:true, tennis:true, soccer:true, hiking:true, cricket:true, running:false, basketball:true, account_id: 2 )
  Profile.create(user_id:3, location:"Brisbane", contact_no:"0475897564", emergency_contact:"Ben", emergency_contact_no: "04705364756", cycling:false, golf:false, tennis:false, soccer:true, hiking:false, cricket:true, running:false, basketball:false, account_id: 3 )
  Profile.create(user_id:4, location:"Perth", contact_no:"0475897564", emergency_contact:"Chang", emergency_contact_no: "04705364756", cycling:true, golf:true, tennis:false, soccer:false, hiking:false, cricket:true, running:false, basketball:true, account_id: 1 )

end


if Activity.count == 0 
    
  Activity.create(category_id:1, title:"Cycling in Yarra Valley", date_time:"2022-01-30 09:00", location:"Roundabout the Basin, Vic", description:"This is a pleasant Activity for people of all ages", user_id:1, cost:0, quantity_limit:0)
  Activity.create(category_id:1, title:"Cycling for Seniors", date_time:"2022-08-30 10:00", location:"Melbourne City", description:"Great Activity for seniors during Winter", user_id:2, cost:50, quantity_limit:100)
  Activity.create(category_id:1, title:"Youth Cycling", date_time:"2022-11-01 11:00", location:"Dandenong Ranges", description:"Challenging Ride for people who want to explore their limits", user_id:3, cost:120, quantity_limit:200)
  Activity.create(category_id:2, title:"Golf at Toorak", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
  Activity.create(category_id:2, title:"Golf at Mornington", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
  Activity.create(category_id:2, title:"Ladies Golf", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:3, title:"Tennis on Grass", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
  Activity.create(category_id:3, title:"Tennis on Clay", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
  Activity.create(category_id:3, title:"Tennis on HardCourts", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:4, title:"Soccer at Toorak", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
  Activity.create(category_id:4, title:"Soccer at Mornington", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
  Activity.create(category_id:4, title:"Ladies Soccer", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:5, title:"Hiking at Toorak", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
  Activity.create(category_id:5, title:"Hiking at Mornington", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
  Activity.create(category_id:5, title:"Ladies Hiking", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:6, title:"Cricket at Toorak", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
  Activity.create(category_id:6, title:"Cricket at Mornington", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
  Activity.create(category_id:6, title:"Ladies Cricket", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:7, title:"Running at Toorak", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
  Activity.create(category_id:7, title:"Running at Mornington", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
  Activity.create(category_id:7, title:"Ladies Running", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:8, title:"Basketball at Toorak", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
  Activity.create(category_id:8, title:"Basketball at Mornington", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
  Activity.create(category_id:8, title:"Ladies Basketball", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
  
  Activity.create(category_id:1, title:"Cycling at Mornington", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
  Activity.create(category_id:2, title:"Golf Fun", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:3, title:"Tennis Stars", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
  Activity.create(category_id:4, title:"Soccer like Pros", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
  Activity.create(category_id:5, title:"Fast Hiking", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:6, title:"BigSlam Cricket", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
  Activity.create(category_id:7, title:"Run for the Stars", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
  Activity.create(category_id:8, title:"Big Jump Basketball", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)

  Activity.create(category_id:1, title:"Cycling at Sunshine", date_time:"2022-08-30 10:00", location:"Sunshine", description:"Beatiful Sunshine Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
  Activity.create(category_id:2, title:"Golf is good", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:3, title:"Tennis at its best", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
  Activity.create(category_id:4, title:"Soccer like Ronaldo", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
  Activity.create(category_id:5, title:"Steep Hiking", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:6, title:"Bigwicket Cricket", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
  Activity.create(category_id:7, title:"Run for the moon", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
  Activity.create(category_id:8, title:"Big Hoop Basketball", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)

  Activity.create(category_id:1, title:"Fast Cycling at Mornington", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
  Activity.create(category_id:2, title:"Golf all day", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:3, title:"Tennis for all", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
  Activity.create(category_id:4, title:"Soccer like Messi", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
  Activity.create(category_id:5, title:"Long Hiking", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:6, title:"BigSix Cricket", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:1, cost:100, quantity_limit:5)
  Activity.create(category_id:7, title:"Run Stardom", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:2, cost:100, quantity_limit:5)
  Activity.create(category_id:8, title:"Jordan Basketball", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
   
end 
##Activity.create(category_id:1, title: "cool")

if User.count == 0 
  User.create(full_name: "Jill Jack", email:"jill@email.com",password:"123",password_confirmation:"123")
  User.create(full_name: "Mary Adams", email:"mary@email.com",password:"123",password_confirmation:"123")
  User.create(full_name: "James Jacob", email:"jacob@email.com",password:"123",password_confirmation:"123")
  User.create(full_name: "Billy Mayers", email:"billy@email.com",password:"123",password_confirmation:"123")

#    User.create(first_name:"Mary",last_name:"Stevens", email:"mary@email.com", password: "123")
#    User.create(first_name:"Bob",last_name:"Thomas", email:"bob@email.com", password: "123")
#    User.create(first_name:"Jane",last_name:"Boyle", email:"jane@email.com", password: "123")

end