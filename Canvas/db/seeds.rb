# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

University.destroy_all
Student.destroy_all
Professor.destroy_all
College.destroy_all
Course.destroy_all
Registration.destroy_all

#University 

  University.create(name: "A & A University",
                      address: "4720 Lyndon Street, Upper Darby, PA 19082"
                      )
    

#student

10.times do
  Student.create(name: Faker::Name.name,
                  major: Faker::Educator.degree,
                  student_number: Faker::Number.number(digits: 7)
  )
end

#professor

10.times do
  Professor.create(name: Faker::Name.name,
                  subject: Faker::Educator.subject,
                  review: Faker::Hipster.sentence(word_count:6)
  )
end

#college

10.times do
  College.create(name: Faker::Educator.secondary_school,
                  rating: Faker::Number.within(range: 1..10),
                  university: University.all.sample
  )
end

#course

10.times do
  Course.create(name: Faker::Educator.course_name,
                description: Faker::Hipster.sentence(word_count:6),
                setting: ["On campus", "Online", "Remotely"].sample,
                semester:["Spring", "Fall", "Winter","Summer"].sample,
                credit: Faker::Number.within(range: 1..4),
                college: College.all.sample,
                professor: Professor.all.sample
  )
end

#registration

10.times do
  Registration.create(registration_number: Faker::Number.number(digits: 10),
                  student: Student.all.sample,
                  course: Course.all.sample
  )
end
