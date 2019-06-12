puts "destroying all"
Staff.destroy_all
Training.destroy_all
Equipment.destroy_all
Mission.destroy_all
Quotation.destroy_all
Opportunity.destroy_all
Client.destroy_all
BusinessProposal.destroy_all
User.destroy_all


puts "creating users"
user_D = User.create!(first_name: "John", last_name: "Smith", email: "john.smith@securexperts.com", password: "password", linkedin: "",
         category: "manager", function: "Director foe sales EMEA", company: "SecurExperts",
         annual_objective: "5000000", objective_done: "2500000")
user_D.remote_avatar_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1560255815/lnoarbu0ggxcusnw3nxo.png"
user_D.save!

# user_A = User.create!(first_name: "Christophe", last_name: "Erhart", email: "christophe.erhart@securexperts.com", password: "password", linkedin: "https://www.linkedin.com/in/eric-durand-ba978054",
#          category: "salesman", function: "Salesman for West France area", company: "SecurExperts",
#          annual_objective: "1000000", objective_done: "350000", manager_id: user_D.id)
# user_A.remote_avatar_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1560255802/lsg3alunx42cjtskl0va.png"
# user_A.save!

user_B = User.create!(first_name: "Jean", last_name: "Martin", email: "jean.martin@securexperts.com", password: "password", linkedin: "",
         category: "salesman", function: "Junior Salesman", company: "SecurExperts",
         annual_objective: "300000", objective_done: "50000", manager_id: user_D.id)
user_B.remote_avatar_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1560255802/lsg3alunx42cjtskl0va.png"
user_B.save!

# user_C = User.create!(first_name: "Lionel", last_name: "Ktorza", email: "lionel.ktorza@securexperts.com", password: "password", linkedin: "",
#          category: "salesman", function: "KAM", company: "SecurExperts",
#          annual_objective: "1200000", objective_done: "500000", manager_id: user_D.id)
# user_C.remote_avatar_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1560255802/lsg3alunx42cjtskl0va.png"
# user_C.save!

puts "creating clients"

client_A = Client.create!(first_name: "Eric", last_name: "Durand", email: "eric.durand@airrbus.com", phone: "06 34 56 75 36", linkedin: "",
           category: "Financial", function: "Buyer for Toulouse sites facilities", company_name: "Airbus", company_SIRET: 85987567325287,
           company_address: "Toulouse", activity_sector: "Aeronautic",
           user_id: user_B.id, latitude: 48.862725, longitude: 2.287592000000018)
client_A.remote_company_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1560159449/posr9zt2gqerl2okekji.png"
client_A.save!

client_B = Client.create!(first_name: "Didier", last_name: "Martin", email: "didier.martin@totall.com", phone: "07 65 78 65 78", linkedin: "",
           category: "Technical", function: "Security manager", company_name: "Total", company_SIRET: 43953501400013,
           company_address: "Feyzin", activity_sector: "Petrochemistry", user_id: user_B.id, latitude: 45.6738, longitude: 4.85831)
client_B.remote_company_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1559727721/p36ypk5cqscd7wdkbm9i.jpg"
client_B.save!

client_C = Client.create!(first_name: "Chris", last_name: "Ramo", email: "Chris.ramo@iterr.com", phone: "07 89 76 54 23", linkedin: "",
           category: "Technical", function: "Safety Director", company_name: "Iter", company_SIRET: 82356718400029,
           company_address: "Cadarache", activity_sector: "Research",
           user_id: user_B.id, latitude: 43.687883, longitude: 5.755595)
client_C.remote_company_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1560258177/p8vj56fluma6ybtqwxul.png"
client_C.save!


client_D = Client.create!(first_name: "Laurent", last_name: "Scotto", email: "Laurent.Scotto@peugeott.com", phone: "06 82 76 51 23", linkedin: "",
           category: "Financial & Technical", function: "Site Director", company_name: "Peugeot", company_SIRET: 82456718400029,
           company_address: "Sochaux", activity_sector: "Automobile industry",
           user_id: user_B.id, latitude: 47.513821, longitude: 6.83039)
client_D.remote_company_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1560258158/lgh48s7nrr0tcflcstag.jpg"
client_D.save!

client_E = Client.create!(first_name: "Mauricio", last_name: "Behir", email: "mauricio.behir@stx.com", phone: "01 23 65 78 65", linkedin: "",
           category: "Financial & Technical", function: "CEO", company_name: "STX Chantiers de l'Atlantique", company_SIRET: 82764718400029,
           company_address: "Saint-Nazaire", activity_sector: "Boat industry",
           user_id: user_B.id, latitude: 47.2796, longitude: 2.20997)
client_E.remote_company_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1560258205/bixusuixaqyanrgpxp65.png"
client_E.save!

client_F = Client.create!(first_name: "Thierry", last_name: "Chilla", email: "thierry.chilla@sigfox.com", phone: "05 67 87 65 27", linkedin: "",
           category: "Financial", function: "Director of Purchase Dpt", company_name: "SigFox", company_SIRET: 84856718400024,
           company_address: "Toulouse", activity_sector: "Network solutions",
           user_id: user_B.id, latitude: 48.862725, longitude: 2.287592000000018)
client_F.remote_company_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1560258398/hlhrudleyccxyt1dm4tb.png"
client_F.save!

client_G = Client.create!(first_name: "Léon", last_name: "Lacote", email: "leon.lacote@renault.com", phone: "01 23 76 89 65", linkedin: "",
           category: "Technical", function: "Security Director for Stains site", company_name: "Renault", company_SIRET: 82456718400015,
           company_address: "Stains", activity_sector: "Automobile industry",
           user_id: user_B.id, latitude: 48.956567, longitude: 2.382515)
client_G.remote_company_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1560258190/anc91hgsviqofljy4yeu.png"
client_G.save!

client_H = Client.create!(first_name: "Laurent", last_name: "Vitalo", email: "laurent.vitalo@mi.fr", phone: "06 23 89 76 25", linkedin: "",
           category: "Technical", function: "Responsible for CCTV systems", company_name: "Ministère de l'Intérieur", company_SIRET: 86536718400029,
           company_address: "Issy-les-Moulineaux", activity_sector: "Public",
           user_id: user_B.id, latitude: 48.8231, longitude: 2.26924)
client_H.remote_company_picture_url = ""
client_H.save!

client_I = Client.create!(first_name: "Andrea", last_name: "Pirlu", email: "andrea.pirlu@stadedefrance.fr", phone: "01 76 45 78 65", linkedin: "",
           category: "Financial & Technical", function: "Site manager", company_name: "Stade de France", company_SIRET: 82987718400011,
           company_address: "Saint-Denis", activity_sector: "Sport events",
           user_id: user_B.id, latitude: 48.9356, longitude: 2.35387)
client_I.remote_company_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1560256981/fle1dvpgskoiuck2w0rb.png"
client_I.save!

client_J = Client.create!(first_name: "Cathy", last_name: "Soranza", email: "c.soranza@cmacgm.com", phone: "04 91 23 76 89", linkedin: "",
           category: "Financial", function: "Facilities Buyer", company_name: "CMA-CGM", company_SIRET: 85687618400092,
           company_address: "Marseille", activity_sector: "Shipment",
           user_id: user_B.id, latitude: 43.296174, longitude: 5.369953)
client_J.remote_company_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1560258308/qqss98put0psnyxamfke.png"
client_J.save!


puts "creating opportunities"

opportunity_A = Opportunity.create!(name: "Access control at the Stains site main gate", description: "Renault has some issues due to the vehicles flow on this gate, they need a better security control", question_1: "Light proposal", question_2: "Industrial", question_3: "No",
                status: "Pending", client_id: client_G.id, user_id: user_B.id)
opportunity_B = Opportunity.create!(name: "SSIAP mission", description: "The Ministry needs a safety service H24 to be compliant with the legislation", question_1: "Only quotation", question_2: "Tertiary", question_3: "Yes",
                status: "Won", client_id: client_H.id, user_id: user_B.id)
opportunity_C = Opportunity.create!(name: "Securising the Marseille IGH", description: "The client needs security staff able to speak English due to their international environment", question_1: "Full proposal", question_2: "Tertiary", question_3: "Yes",
                status: "Lost", client_id: client_J.id, user_id: user_B.id)
opportunity_D = Opportunity.create!(name: "Security and safety contract", description: "The current provider went bankrupt, so the client needs to find a new provider", question_1: "Light proposal", question_2: "Industrial", question_3: "Yes",
                status: "Pending", client_id: client_A.id, user_id: user_B.id)
opportunity_E = Opportunity.create!(name: "Protect people during the family day", description: "The client needs to have several security staffs to securise the family day event", question_1: "Light proposal", question_2: "Industrial", question_3: "Yes",
                status: "Lost", client_id: client_B.id, user_id: user_B.id)
opportunity_F = Opportunity.create!(name: "Ensuring the safety for workers", description: "During the Tokamak construction phase, Iter wants to ensure the workers safety thanks to experienced safety staff ", question_1: "Full proposal", question_2: "Industrial", question_3: "Yes",
                status: "Won", client_id: client_C.id, user_id: user_B.id)


quotation_A = Quotation.create!(margin_rate: "15", selling_price: "300000", starting_date: Date.new(2019,6,21), end_date: Date.new(2020,7,21),
              opportunity_id: opportunity_A.id)
quotation_B = Quotation.create!(margin_rate: "12", selling_price: "500000", starting_date: Date.new(2019,8,21), end_date: Date.new(2020,12,21),
              opportunity_id: opportunity_B.id)
quotation_C = Quotation.create!(margin_rate: "18", selling_price: "200000", starting_date: Date.new(2019,6,21), end_date: Date.new(2020,6,21),
              opportunity_id: opportunity_C.id)
quotation_D = Quotation.create!(margin_rate: "10", selling_price: "400000", starting_date: Date.new(2019,6,21), end_date: Date.new(2020,6,21),
              opportunity_id: opportunity_D.id)
quotation_E = Quotation.create!(margin_rate: "20", selling_price: "2000000", starting_date: Date.new(2019,8,23), end_date: Date.new(2020,6,11),
              opportunity_id: opportunity_E.id)
quotation_F = Quotation.create!(margin_rate: "13", selling_price: "100000", starting_date: Date.new(2019,7,23), end_date: Date.new(2020,7,01),
              opportunity_id: opportunity_F.id)


mission_A = Mission.create!(description: "Gate A", staff_quantity: "2", staff_planning: "H24 7/7",
            training_quantity: "5", equipment_quantity: "2", quotation_id: quotation_A.id)
mission_B = Mission.create!(description: "Gate B", staff_quantity: "1", staff_planning: "7/19 Monday>Friday",
            training_quantity: "2", equipment_quantity: "1", quotation_id: quotation_A.id)
mission_C = Mission.create!(description: "SSIAP 1", staff_quantity: "2", staff_planning: "H24 7/7",
            training_quantity: "10", equipment_quantity: "2", quotation_id: quotation_B.id)
mission_D = Mission.create!(description: "SSIAP 2", staff_quantity: "1", staff_planning: "7/19 Monday>Friday",
            training_quantity: "5", equipment_quantity: "1", quotation_id: quotation_B.id)
mission_E = Mission.create!(description: "Main hall", staff_quantity: "1", staff_planning: "7/19 Monday>Friday",
            training_quantity: "2", equipment_quantity: "1", quotation_id: quotation_C.id)
mission_F = Mission.create!(description: "A380 construction site", staff_quantity: "4", staff_planning: "H24 7/7",
            training_quantity: "20", equipment_quantity: "4", quotation_id: quotation_D.id)
mission_G = Mission.create!(description: "Showroom site", staff_quantity: "2", staff_planning: "7/19 Monday>Friday",
            training_quantity: "4", equipment_quantity: "2", quotation_id: quotation_D.id)
mission_H = Mission.create!(description: "All site", staff_quantity: "12", staff_planning: "7/19 Monday>Friday",
            training_quantity: "24", equipment_quantity: "12", quotation_id: quotation_E.id)
mission_I = Mission.create!(description: "Main site", staff_quantity: "3", staff_planning: "H24 7/7",
            training_quantity: "15", equipment_quantity: "3", quotation_id: quotation_F.id)
mission_J = Mission.create!(description: "Safety staff to check workers", staff_quantity: "2", staff_planning: "7/19 Monday>Friday",
            training_quantity: "4", equipment_quantity: "2", quotation_id: quotation_F.id)


puts "creating equipement "
equipment_A = Equipment.create!(category: "Security management software", description: "A software especially designed for security companies", cost: "500")
equipment_A.remote_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1560265037/hi5yha1y5aypw3hniwme.png"
equipment_A.save!

equipment_B = Equipment.create!(category: "Drone", description: "A drone to have a large view during events with crowd", cost: "800")
equipment_B.remote_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1560265052/genx9mglst2nwutck5c3.jpg"
equipment_B.save!

equipment_C = Equipment.create!(category: "Patrol controller", description: "This patrol controller is IK10 compliant so it resists to shocks ", cost: "200")
equipment_C.remote_picture_url ="https://res.cloudinary.com/dmeiwlskm/image/upload/v1560264889/fvufrbqlhixr29xwg8hb.jpg"
equipment_C.save!

equipment_D = Equipment.create!(category: "Flashlight", description: "TA 2000 lumen flashlight for night patrols", cost: "150")
equipment_D.remote_picture_url ="https://res.cloudinary.com/dmeiwlskm/image/upload/v1560241103/uaf3nyoi99tjfix4sa8z.jpg"
equipment_D.save!



puts "creating staff "

staff_A = Staff.create!(category: "SSIAP safety agent", description: "Staff especially skilled to ensure safety on ERP/IGH sites", worked_time_hourly_rate: "20.50",
          closed_time_hourly_rate: "23.00")
staff_A.remote_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1559727733/b4h2it8awbobhzr4wyja.png"
staff_A.save!

staff_B = Staff.create!(category: "Security agent", description: "Experienced staff to protect people and facilities against acts of malevolence", worked_time_hourly_rate: "19.50",
          closed_time_hourly_rate: "21.50")
staff_B.remote_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1559727702/qtyufu4ykqodq6db9qq9.jpg"
staff_B.save!

staff_C = Staff.create!(category: "Event security agent", description: "Specialised staff to secure events", worked_time_hourly_rate: "24.00",
          closed_time_hourly_rate: "28.50")
staff_C.remote_picture_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1560266614/vi0ses4iyu4k7tmgcjgq.jpg"
staff_C.save!


puts "creating training "

training_A = Training.create!(category: "CT CERIC from CNPP", description: "Training to know how to secure a site efficiently", educational_cost: "300", duration: "2")
training_A.remote_icon_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1559727909/be5glelqxfjgekhqmz8o.png"
training_A.save!

training_B = Training.create!(category: "SSIAP training", description: "Training to manipulate extinguishers and to know fire legislation", educational_cost: "500", duration: "5")
training_B.remote_icon_url = "https://res.cloudinary.com/dmeiwlskm/image/upload/v1559727945/h54sajtohtsrpvmnczug.png"
training_B.save!

puts "creating mission staff equipement and training "

mission_staff_AA = MissionStaff.create!(mission: mission_A, staff: staff_A)
mission_staff_AB = MissionStaff.create!(mission: mission_A, staff: staff_B)
mission_staff_AC = MissionStaff.create!(mission: mission_A, staff: staff_C)
mission_staff_BB = MissionStaff.create!(mission: mission_F, staff: staff_B)
mission_staff_BA = MissionStaff.create!(mission: mission_F, staff: staff_A)
mission_staff_BC = MissionStaff.create!(mission: mission_F, staff: staff_C)
mission_staff_CC = MissionStaff.create!(mission: mission_C, staff: staff_C)
mission_staff_CA = MissionStaff.create!(mission: mission_C, staff: staff_A)
mission_staff_CB = MissionStaff.create!(mission: mission_C, staff: staff_B)

mission_equipment_AA = MissionEquipment.create!(mission: mission_A, equipment: equipment_A)
mission_equipment_AB = MissionEquipment.create!(mission: mission_A, equipment: equipment_B)
mission_equipment_AC = MissionEquipment.create!(mission: mission_A, equipment: equipment_C)
mission_equipment_BB = MissionEquipment.create!(mission: mission_F, equipment: equipment_B)
mission_equipment_BA = MissionEquipment.create!(mission: mission_F, equipment: equipment_A)
mission_equipment_BC = MissionEquipment.create!(mission: mission_F, equipment: equipment_C)
mission_equipment_CC = MissionEquipment.create!(mission: mission_C, equipment: equipment_C)
mission_equipment_CA = MissionEquipment.create!(mission: mission_C, equipment: equipment_A)
mission_equipment_CB = MissionEquipment.create!(mission: mission_C, equipment: equipment_B)

mission_training_AA = MissionTraining.create!(mission: mission_A, training: training_A)
mission_training_AB = MissionTraining.create!(mission: mission_A, training: training_B)
mission_training_BB = MissionTraining.create!(mission: mission_F, training: training_B)
mission_training_BA = MissionTraining.create!(mission: mission_F, training: training_A)

business_proposal_A = BusinessProposal.create!(quotation_id: quotation_D.id)
puts "Done"
