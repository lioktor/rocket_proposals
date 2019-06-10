# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Mission.destroy_all
Opportunity.destroy_all
Client.destroy_all
BusinessProposal.destroy_all
Quotation.destroy_all
Staff.destroy_all
Training.destroy_all
Equipment.destroy_all


# !!! Lionel seed Users vierges, ne pas modifier (sauf si besoin de corriger),
#     à réutiliser pour créer les seeds

# User.create!(first_name: "", last_name: "", email: "", password: "", linkedin: "",
#          avatar: "", category: "", function: "", company: "",
#          annual_objective: "", objective_done: "", manager_id: "")


# Client.create!(first_name: "", last_name: "", email: "", phone: "", linkedin: "",
#            category: "", function: "", company_name: "", company_SIRET: "",
#            company_picture: "", company_address: "", activity_sector: "",
#            user_id: "")

# Opportunity.create!(name: "", description: "", question_1: "", question_2: "", question_3: "",
#                 status: "", client_id: "", user_id: "")

# Quotation.create!(margin_rate: "", selling_price: "", starting_date: "", end_date: "",
#               opportunity_id: "")

# Mission.create!(description: "", staff_quantity: "", staff_planning: "",
#             training_quantity: "", equipment_quantity: "")

# Equipment.create!(category: "", description: "", cost: "", picture: "")

# Staff.create!(category: "", description: "", picture: "", worked_time_hourly_rate: "",
#           closed_time_hourly_rate: "")

# Training.create!(category: "", description: "", educational_cost: "", duration: "",
#              icon: "", mission_id: "")


# Créer les seed ici
# Pour faciliter les créations de seed :
#   - toujouts utiliser "password" pour le password
#   - toujouts utiliser "prénom.nom@gmail.com" pour l'email'
#   - toujouts utiliser "password" pour le password

user_A = User.create!(first_name: "Eric", last_name: "Durand", email: "eric.durand@gmail.com", password: "password", linkedin: "https://www.linkedin.com/in/eric-durand-ba978054",
         category: "", function: "", company: "",
         annual_objective: "", objective_done: "", manager_id: "")
user_A.remote_avatar_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1559727441/hdzfuahocc6cl9mkk7vh.jpg"
user_A.save!

user_B = User.create!(first_name: "Sylvester", last_name: "Stallone", email: "sylvester.stallone@gmail.com", password: "password", linkedin: "https://www.linkedin.com/in/sylvester.stallone-ba978054",
         category: "", function: "", company: "",
         annual_objective: "30000", objective_done: "5000", manager_id: "")
user_B.remote_avatar_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/w_1000,c_fill,ar_1:1,g_auto,r_max,bo_5px_solid_red,b_rgb:262c35/v1559727441/hdzfuahocc6cl9mkk7vh.jpg"
user_B.save!

user_C = User.create!(first_name: "Arnold", last_name: "Schwarzy", email: "arnold.schwarzy@gmail.com", password: "password", linkedin: "https://www.linkedin.com/in/arnold-schwarzy-ba978054",
         category: "", function: "", company: "",
         annual_objective: "", objective_done: "", manager_id: "")
user_C.remote_avatar_url = 'https://res.cloudinary.com/dmeiwlskm/image/upload/v1559727602/drl50onrexutaktrujvw.jpg'
user_C.save!

client_A = Client.create!(first_name: "Princess", last_name: "Peach", email: "princess.peach@gmail.com", phone: "06.06.06.06", linkedin: "https://www.linkedin.com/in/princess-peach-ba978054",
           category: "", function: "", company_name: "Le Wagon Paris", company_SIRET: 79494991700023,
           company_address: "", activity_sector: "",
           user_id: "1", latitude: 48.862725, longitude: 2.287592)
client_A.remote_company_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1559727746/uk6xnvfazriyel5ubeaq.jpg"
client_A.save!

client_B = Client.create!(first_name: "Donkey", last_name: "Kong", email: "donkey.kong@gmail.com", phone: "06.06.06.06", linkedin: "https://www.linkedin.com/in/donkey-kong-ba978054",
           category: "", function: "", company_name: "Le Wagon Marseille", company_SIRET: 43953501400013,
           company_address: "", activity_sector: "",
           user_id: "2", latitude: 43.296174, longitude: 5.369953)
client_B.remote_company_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1559727721/p36ypk5cqscd7wdkbm9i.jpg"
client_B.save!

client_C = Client.create!(first_name: "Zelda", last_name: "Link", email: "zelda.link@gmail.com", phone: "06.06.06.06", linkedin: "https://www.linkedin.com/in/zelda-link-ba978054",
           category: "", function: "", company_name: "The Camp", company_SIRET: 80856718400029,
           company_address: "Nantes", activity_sector: "",
           user_id: "3", latitude: 47.218637, longitude: 1.554136)
client_C.remote_company_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1559727616/iv8u4icrgqbifyfecl94.jpg"
client_C.save!

opportunity_A = Opportunity.create!(name: "Opportunity A", description: "Super opp", question_1: "", question_2: "", question_3: "",
                status: "Pending", client_id: "1", user_id: "2")
opportunity_B = Opportunity.create!(name: "Opportunity B", description: "To discuss", question_1: "", question_2: "", question_3: "",
                status: "Pending", client_id: "2", user_id: "3")
opportunity_C = Opportunity.create!(name: "Opportunity C", description: "Go and sign", question_1: "", question_2: "", question_3: "",
                status: "Pending", client_id: "3", user_id: "1")
opportunity_D = Opportunity.create!(name: "Opportunity D", description: "Bad review", question_1: "", question_2: "", question_3: "",
                status: "Won", client_id: "1", user_id: "2")
opportunity_E = Opportunity.create!(name: "Opportunity E", description: "Money to do", question_1: "", question_2: "", question_3: "",
                status: "Won", client_id: "2", user_id: "3")
opportunity_F = Opportunity.create!(name: "Opportunity F", description: "Big contract", question_1: "", question_2: "", question_3: "",
                status: "Lost", client_id: "3", user_id: "1")

mission_A = Mission.create!(description: "Protect Cadarache", staff_quantity: "20", staff_planning: "H24",
            training_quantity: "4", equipment_quantity: "12", quotation_id: 2)
mission_B = Mission.create!(description: "Protect Le Wagon", staff_quantity: "50", staff_planning: "H24",
            training_quantity: "2", equipment_quantity: "2", quotation_id: 1)
mission_C = Mission.create!(description: "Protect La Bonne Mère", staff_quantity: "100", staff_planning: "H24",
            training_quantity: "5", equipment_quantity: "20", quotation_id: 1)

quotation_A = Quotation.create!(margin_rate: "5", selling_price: "3000", starting_date: "2019/06/21", end_date: "2019/07/21",
              opportunity_id: "1")
quotation_B = Quotation.create!(margin_rate: "12", selling_price: "500", starting_date: "2019/08/21", end_date: "2019/12/21",
              opportunity_id: "2")
quotation_C = Quotation.create!(margin_rate: "9", selling_price: "200", starting_date: "2019/06/21", end_date: "2020/06/21",
              opportunity_id: "3")

equipement_A = Equipment.create!(category: "chien", description: "4 legs", cost: "500")
equipement_A.remote_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1559728118/pbvgnucghqzpw9opsapq.jpg"
equipement_A.save!
equipement_B = Equipment.create!(category: "black jacket", description: "dark jacket", cost: "20")
equipement_B.remote_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1559728170/te6s4dfu1iorwpygzphb.jpg"
equipement_B.save!
equipement_C = Equipment.create!(category: "torch", description: "shiny light", cost: "50")
equipement_C.remote_picture_url ="https://res.cloudinary.com/dmeiwlskm/image/upload/v1559728201/mxkg4fzc25xvrvxegque.jpg"
equipement_C.save!

staff_A = Staff.create!(category: "fireman", description: "guy in red", worked_time_hourly_rate: "5.5",
          closed_time_hourly_rate: "12.0")
staff_A.remote_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1559728016/rsee7qfw32hy4q3nlb7h.jpg"
staff_A.save!
staff_B = Staff.create!(category: "guard", description: "guy in blue", worked_time_hourly_rate: "2.5",
          closed_time_hourly_rate: "8.0")
staff_B.remote_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1559728077/dl5w7p33fykh2llhxxfk.png"
staff_B.save!


training_A = Training.create!(category: "cybersecuriry", description: "take care of your computer", educational_cost: "5500", duration: "31", mission_id: "1")
training_A.remote_icon_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1559727909/be5glelqxfjgekhqmz8o.png"
training_A.save!
training_B = Training.create!(category: "fire protection", description: "drink water", educational_cost: "2000", duration: "5", mission_id: "2")
training_B.remote_icon_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1559727945/h54sajtohtsrpvmnczug.png"
training_B.save!

