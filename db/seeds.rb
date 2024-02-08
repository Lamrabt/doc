# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
all_cities=[]
all_doctors=[]
all_patients=[]
all_appointment=[]

10.times do 
    all_cities << City.create(
        name: Faker::Address.city)
end

10.times do 
    all_doctors << Doctor.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        city: all_cities.sample,
        zip_code: Faker::Address.zip_code)
end

10.times do 
    all_patients << Patient.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        city: all_cities.sample)
end

10.times do 
    all_appointment << Appointment.create(
        date: Faker::Date.forward(days: 23),
        doctor: all_doctors.sample,
        patient: all_patients.sample,
        city: all_cities.sample)
end