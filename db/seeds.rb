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

User.create!(first_name: "", last_name: "", email: "", password: "", linkedin: "",
         avatar: "", category: "", function: "", company: "",
         annual_objective: "", objective_done: "", manager_id: "")


Client.create!(first_name: "", last_name: "", email: "", phone: "", linkedin: "",
           category: "", function: "", company_name: "", company_SIRET: "",
           company_picture: "", company_address: "", activity_sector: "",
           user_id: "")

Opportunity.create!(name: "", description: "", question_1: "", question_2: "", question_3: "",
                status: "", client_id: "", user_id: "")

Quotation.create!(margin_rate: "", selling_price: "", starting_date: "", end_date: "",
              opportunity_id: "")

Mission.create!(description: "", staff_quantity: "", staff_planning: "",
            training_quantity: "", equipment_quantity: "")

Equipment.create!(category: "", description: "", cost: "", picture: "")

Staff.create!(category: "", description: "", picture: "", worked_time_hourly_rate: "",
          closed_time_hourly_rate: "")

Training.create!(category: "", description: "", educational_cost: "", duration: "",
             icon: "", mission_id: "")


# Créer les seed ici
# Pour faciliter les créations de seed :
#   - toujouts utiliser "password" pour le password
#   - toujouts utiliser "prénom.nom@gmail.com" pour l'email'
#   - toujouts utiliser "password" pour le password

user_A = User.create!(first_name: "Eric", last_name: "Durand", email: "eric.durand@gmail.com", password: "password", linkedin: "https://www.linkedin.com/in/eric-durand-ba978054",
         avatar: "", category: "", function: "", company: "",
         annual_objective: "", objective_done: "", manager_id: "")
