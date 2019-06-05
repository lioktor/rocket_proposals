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
         avatar: "https://risibank.fr/cache/stickers/d547/54725-full.png", category: "", function: "", company: "",
         annual_objective: "", objective_done: "", manager_id: "")
user_B = User.create!(first_name: "Sylvester", last_name: "Stallone", email: "sylvester.stallone@gmail.com", password: "password", linkedin: "https://www.linkedin.com/in/sylvester.stallone-ba978054",
         avatar: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=2ahUKEwjsjo3u1NDiAhWEA2MBHf7zAq4QjRx6BAgBEAU&url=https%3A%2F%2Fwww.lepoint.fr%2Fpop-culture%2Fcinema%2Fsylvester-stallone-repart-en-guerre-pour-un-cinquieme-rambo-07-05-2018-2216528_2923.php&psig=AOvVaw2pYZsOd7xYNYkA9Ndx4zd9&ust=1559766413792952", category: "", function: "", company: "",
         annual_objective: "", objective_done: "", manager_id: "")
user_C = User.create!(first_name: "Arnold", last_name: "Schwarzy", email: "arnold.schwarzy@gmail.com", password: "password", linkedin: "https://www.linkedin.com/in/arnold-schwarzy-ba978054",
         avatar: "https://p2.cineserie.com/www.cineserie.com/wp-content/uploads/2018/03/a79a9211-ae50-4923-85a8-442b3f73963e.jpg?fit=660%2C330&ssl=1&ver=1", category: "", function: "", company: "",
         annual_objective: "", objective_done: "", manager_id: "")

client_A = Client.create!(first_name: "Princess", last_name: "Peach", email: "princess.peach@gmail.com", phone: "06.06.06.06", linkedin: "https://www.linkedin.com/in/princess-peach-ba978054",
           category: "", function: "", company_name: "Bowser Castle", company_SIRET: "79,494,991,700,023",
           company_picture: "https://www.archimag.com/sites/archimag.com/files/styles/article/public/web_articles/image/Nintendo.jpg?itok=g-3amfI2", company_address: "", activity_sector: "",
           user_id: "1")
client_B = Client.create!(first_name: "Donkey", last_name: "Kong", email: "donkey.kong@gmail.com", phone: "06.06.06.06", linkedin: "https://www.linkedin.com/in/donkey-kong-ba978054",
           category: "", function: "", company_name: "Bowser Castle", company_SIRET: "79,494,991,700,023",
           company_picture: "https://www.archimag.com/sites/archimag.com/files/styles/article/public/web_articles/image/Nintendo.jpg?itok=g-3amfI2", company_address: "", activity_sector: "",
           user_id: "2")
client_C = Client.create!(first_name: "Zelda", last_name: "Link", email: "zelda.link@gmail.com", phone: "06.06.06.06", linkedin: "https://www.linkedin.com/in/zelda-link-ba978054",
           category: "", function: "", company_name: "Bowser Castle", company_SIRET: "79,494,991,700,023",
           company_picture: "https://cdn03.nintendo-europe.com/media/images/10_share_images/portals_3/SI_Hub_Zelda_Portal_image1600w.jpg", company_address: "", activity_sector: "",
           user_id: "3")

opportunity_A = Opportunity.create!(name: "Opportunity A", description: "super opp", question_1: "", question_2: "", question_3: "",
                status: "", client_id: "1", user_id: "2")
opportunity_B = Opportunity.create!(name: "Opportunity B", description: "to discuss", question_1: "", question_2: "", question_3: "",
                status: "", client_id: "2", user_id: "3")
opportunity_C = Opportunity.create!(name: "Opportunity C", description: "go and sign", question_1: "", question_2: "", question_3: "",
                status: "", client_id: "3", user_id: "1")

quotation_A = Quotation.create!(margin_rate: "5", selling_price: "3000", starting_date: "2019/06/21", end_date: "2019/07/21",
              opportunity_id: "1", mission_id: "1")
quotation_B = Quotation.create!(margin_rate: "12", selling_price: "500", starting_date: "2019/08/21", end_date: "2019/12/21",
              opportunity_id: "2", mission_id: "1")
quotation_C = Quotation.create!(margin_rate: "9", selling_price: "200", starting_date: "2019/06/21", end_date: "2020/06/21",
              opportunity_id: "3", mission_id: "1")

mission_A = Mission.create!(description: "Protect Cadarache", staff_quantity: "20", staff_planning: "H24",
            training_quantity: "4", equipment_quantity: "12")
mission_B = Mission.create!(description: "Protect Le Wagon", staff_quantity: "50", staff_planning: "H24",
            training_quantity: "2", equipment_quantity: "2")
mission_C = Mission.create!(description: "Protect La Bonne Mère", staff_quantity: "100", staff_planning: "H24",
            training_quantity: "5", equipment_quantity: "20")

equipement_A = Equipment.create!(category: "chien", description: "4 legs", cost: "500", picture: "https://img.chewy.com/is/image/catalog/139500_Main._SY630_V1548179221_.jpg")
equipement_B = Equipment.create!(category: "black jacket", description: "dark jacket", cost: "20", picture: "https://4.imimg.com/data4/SG/JC/MY-22995117/security-guard-jacket-500x500.jpg")
equipement_C = Equipment.create!(category: "torch", description: "shiny light", cost: "50", picture: "https://i.ebayimg.com/images/g/hxAAAOSw5cNYj29j/s-l300.jpg")

staff_A = Staff.create!(category: "fireman", description: "guy in red", picture: "https://i.pinimg.com/originals/49/56/35/495635fe83d07ec67907c029dc8298e7.jpg", worked_time_hourly_rate: "5.5",
          closed_time_hourly_rate: "12.0")
staff_B = Staff.create!(category: "guard", description: "guy in blue", picture: "https://lscdn.azureedge.net/biz-live/img/-iss-security-services--10425160-c8a99316.jpeg", worked_time_hourly_rate: "2.5",
          closed_time_hourly_rate: "8.0")

training_A = Training.create!(category: "cybersecuriry", description: "take care of your computer", educational_cost: "5500", duration: "31",
             icon: "https://static.thenounproject.com/png/1461016-200.png", mission_id: "1")
training_B = Training.create!(category: "fire protection", description: "drink water", educational_cost: "2000", duration: "5",
             icon: "https://image.flaticon.com/icons/png/512/91/91381.png", mission_id: "2")

