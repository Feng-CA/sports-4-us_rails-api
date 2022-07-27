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
  Profile.create(user_id:2, location:"Sydney", contact_no:"0475897564", emergency_contact:"Sandy", emergency_contact_no: "04705364756", cycling:true, golf:true, tennis:true, soccer:true, hiking:true, cricket:true, running:false, basketball:true, account_id: 1 )
  Profile.create(user_id:3, location:"Brisbane", contact_no:"0475897564", emergency_contact:"Ben", emergency_contact_no: "04705364756", cycling:false, golf:false, tennis:false, soccer:true, hiking:false, cricket:true, running:false, basketball:false, account_id: 2 )
  Profile.create(user_id:4, location:"Brisbane", contact_no:"0475897564", emergency_contact:"Ben", emergency_contact_no: "04705364756", cycling:false, golf:false, tennis:false, soccer:true, hiking:false, cricket:true, running:false, basketball:false, account_id: 2 )
  Profile.create(user_id:5, location:"Brisbane", contact_no:"0475897564", emergency_contact:"Ben", emergency_contact_no: "04705364756", cycling:false, golf:false, tennis:false, soccer:true, hiking:false, cricket:true, running:false, basketball:false, account_id: 2 )
  Profile.create(user_id:6, location:"Brisbane", contact_no:"0475897564", emergency_contact:"Ben", emergency_contact_no: "04705364756", cycling:false, golf:false, tennis:false, soccer:true, hiking:false, cricket:true, running:false, basketball:false, account_id: 2 )
  Profile.create(user_id:7, location:"Perth", contact_no:"0475897564", emergency_contact:"Chang", emergency_contact_no: "04705364756", cycling:true, golf:true, tennis:false, soccer:false, hiking:false, cricket:true, running:false, basketball:true, account_id: 3 )

end


if Activity.count == 0 
    
  Activity.create(category_id:1, title:"Cycling in Yarra Valley", date_time:"2022-01-30 09:00", location:"Roundabout the Basin, Vic", description:"This is a pleasant Activity for people of all ages", user_id:3, cost:0, quantity_limit:0)
  Activity.create(category_id:1, title:"Cycling for Seniors", date_time:"2022-08-30 10:00", location:"Melbourne City", description:"Great Activity for seniors during Winter", user_id:3, cost:50, quantity_limit:100)
  Activity.create(category_id:1, title:"Youth Cycling", date_time:"2022-11-01 11:00", location:"Dandenong Ranges", description:"Challenging Ride for people who want to explore their limits", user_id:3, cost:120, quantity_limit:200)
  Activity.create(category_id:2, title:"Golf at Toorak", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:2, title:"Golf at Mornington", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:2, title:"Ladies Golf", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:3, title:"Tennis on Grass", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:3, title:"Tennis on Clay", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:3, title:"Tennis on HardCourts", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:4, title:"Soccer at Toorak", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:4, title:"Soccer at Mornington", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:3, cost:100, quantity_limit:5)
  Activity.create(category_id:4, title:"Ladies Soccer", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:3, cost:100, quantity_limit:5)
  
  Activity.create(category_id:5, title:"Hiking at Toorak", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:4, cost:100, quantity_limit:5)
  Activity.create(category_id:5, title:"Hiking at Mornington", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:4, cost:100, quantity_limit:5)
  Activity.create(category_id:5, title:"Ladies Hiking", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:4, cost:100, quantity_limit:5)
  Activity.create(category_id:6, title:"Cricket at Toorak", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:4, cost:100, quantity_limit:5)
  Activity.create(category_id:6, title:"Cricket at Mornington", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:4, cost:100, quantity_limit:5)
  Activity.create(category_id:6, title:"Ladies Cricket", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:4, cost:100, quantity_limit:5)
  Activity.create(category_id:7, title:"Running at Toorak", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:4, cost:100, quantity_limit:5)
  Activity.create(category_id:7, title:"Running at Mornington", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:4, cost:100, quantity_limit:5)
  Activity.create(category_id:7, title:"Ladies Running", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:4, cost:100, quantity_limit:5)
  Activity.create(category_id:8, title:"Basketball at Toorak", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:4, cost:100, quantity_limit:5)
  Activity.create(category_id:8, title:"Basketball at Mornington", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:4, cost:100, quantity_limit:5)
  Activity.create(category_id:8, title:"Ladies Basketball", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:4, cost:100, quantity_limit:5)
  
  Activity.create(category_id:1, title:"Cycling at Mornington", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:5, cost:100, quantity_limit:5)
  Activity.create(category_id:2, title:"Golf Fun", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:5, cost:100, quantity_limit:5)
  Activity.create(category_id:3, title:"Tennis Stars", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:5, cost:100, quantity_limit:5)
  Activity.create(category_id:4, title:"Soccer like Pros", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:5, cost:100, quantity_limit:5)
  Activity.create(category_id:5, title:"Fast Hiking", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:5, cost:100, quantity_limit:5)
  Activity.create(category_id:6, title:"BigSlam Cricket", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:5, cost:100, quantity_limit:5)
  Activity.create(category_id:7, title:"Run for the Stars", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:5, cost:100, quantity_limit:5)
  Activity.create(category_id:8, title:"Big Jump Basketball", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:5, cost:100, quantity_limit:5)
  Activity.create(category_id:1, title:"Cycling at Sunshine", date_time:"2022-08-30 10:00", location:"Sunshine", description:"Beatiful Sunshine Scenery to be enjoyed", user_id:5, cost:100, quantity_limit:5)
  Activity.create(category_id:2, title:"Golf is good", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:5, cost:100, quantity_limit:5)
  Activity.create(category_id:3, title:"Tennis at its best", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:5, cost:100, quantity_limit:5)
  Activity.create(category_id:4, title:"Soccer like Ronaldo", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:5, cost:100, quantity_limit:5)
  
  Activity.create(category_id:5, title:"Steep Hiking", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:6, cost:100, quantity_limit:5)
  Activity.create(category_id:6, title:"Bigwicket Cricket", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:6, cost:100, quantity_limit:5)
  Activity.create(category_id:7, title:"Run for the moon", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:6, cost:100, quantity_limit:5)
  Activity.create(category_id:8, title:"Big Hoop Basketball", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:6, cost:100, quantity_limit:5)
  Activity.create(category_id:1, title:"Fast Cycling at Mornington", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:6, cost:100, quantity_limit:5)
  Activity.create(category_id:2, title:"Golf all day", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:6, cost:100, quantity_limit:5)
  Activity.create(category_id:3, title:"Tennis for all", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:6, cost:100, quantity_limit:5)
  Activity.create(category_id:4, title:"Soccer like Messi", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:6, cost:100, quantity_limit:5)
  Activity.create(category_id:5, title:"Long Hiking", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:6, cost:100, quantity_limit:5)
  Activity.create(category_id:6, title:"BigSix Cricket", date_time:"2022-01-30 09:00", location:"Toorak", description:"Play and Network with professionals from Toorak", user_id:6, cost:100, quantity_limit:5)
  Activity.create(category_id:7, title:"Run Stardom", date_time:"2022-08-30 10:00", location:"Mornington", description:"Beatiful Mornigton Scenery to be enjoyed", user_id:6, cost:100, quantity_limit:5)
  Activity.create(category_id:8, title:"Jordan Basketball", date_time:"2022-11-01 11:00", location:"Melton", description:"Training specifically for Women", user_id:6, cost:100, quantity_limit:5)
   
end 
##Activity.create(category_id:1, title: "cool")

if User.count == 0 
  User.create(full_name: "Jill Member", email:"jill@email.com",password:"123",password_confirmation:"123")
  User.create(full_name: "Mary Member", email:"mary@email.com",password:"123",password_confirmation:"123")
  User.create(full_name: "James Organiser", email:"jacob@email.com",password:"123",password_confirmation:"123")
  User.create(full_name: "Billy Organiser", email:"billy@email.com",password:"123",password_confirmation:"123")
  User.create(full_name: "Clark Organiser", email:"clark@email.com",password:"123",password_confirmation:"123")
  User.create(full_name: "Bridget Organiser", email:"bridget@email.com",password:"123",password_confirmation:"123")
  User.create(full_name: "Hugh Admin", email:"hugh@email.com",password:"123",password_confirmation:"123")
  
end

if Inbox.count == 0 
  Inbox.create(message:"Let us get it started Jill", user_id:1)
  Inbox.create(message:"Let us get it started Mary", user_id:2)
  Inbox.create(message:"Let us get it started James", user_id:3)
  Inbox.create(message:"Let us get it started Billy", user_id:4)
  Inbox.create(message:"Let us get it started Clark", user_id:5)
  Inbox.create(message:"Let us get it started Bridget", user_id:6)
  Inbox.create(message:"Let us get it started Hugh", user_id:7)
  Inbox.create(message:"Go for it Hugh", user_id:7)
  Inbox.create(message:"Go for it Bridget", user_id:6)
  Inbox.create(message:"Go for it Clark", user_id:5)
  Inbox.create(message:"Go for it Hugh", user_id:7)
  Inbox.create(message:"Go for it James", user_id:3)
  Inbox.create(message:"Go for it Mary", user_id:2)
  Inbox.create(message:"Go for it Jill", user_id:1)
end

if InboxSender.count == 0 
  InboxSender.create(inbox_id:1, user_id:7)
  InboxSender.create(inbox_id:2, user_id:6)
  InboxSender.create(inbox_id:3, user_id:5)
  InboxSender.create(inbox_id:4, user_id:7)
  InboxSender.create(inbox_id:5, user_id:3)
  InboxSender.create(inbox_id:6, user_id:2)
  InboxSender.create(inbox_id:7, user_id:1)
  InboxSender.create(inbox_id:8, user_id:1)
  InboxSender.create(inbox_id:9, user_id:2)
  InboxSender.create(inbox_id:10, user_id:3)
  InboxSender.create(inbox_id:11, user_id:4)
  InboxSender.create(inbox_id:12, user_id:5)
  InboxSender.create(inbox_id:13, user_id:6)
  InboxSender.create(inbox_id:14, user_id:7)
end