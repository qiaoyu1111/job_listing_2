# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: "test@gmail.com", password: "1234567", password_confirmation: "1234567", is_admin: true)

puts "Auto create 20 jobs"

create_account = for i in 1..20 do
    Job.create([title: "Legal Assistant #{i}", description: "BASIC QUALIFICATIONS #{i}
    · 2+ years of experience in an administrative capacity
    · Bachelor’s degree
    · Strong written and oral communication skills
    · Ability to work independently
    · Client-service oriented with strong attention to detail
    PREFERRED QUALIFICATIONS
    · Strong desire and aptitude for learning new concepts
    · Ability to demonstrate sound judgment in ambiguous situations
    · Legal experience is a plus", wage_lower_bound: 8000, wage_upper_bound: 9500, contact_email: "test@gmail.com",
    is_hidden: false])

  end
