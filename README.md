# Mod-2-project

Steps: 
------
1/ create models
2/ setting up relationships
3/ seed fake data
4/ setting up the routes
5/ rails db: migrate
6/ rails db:seed
7/ create controllers
8/ views 
git merge origin Models

creating models:
rails g model student name major student_number:integer
rails g model professor name subject review
rails g model course name description setting semester credit:integer college_id:integer professor_id:integer
rails g model college name rating:integer university_id:integer
rails g model registration registration_number:integer student_id:integer course_id:integer
rails g model university name address

ralationships:

Student:
has_many :registrations
has_many :courses, through: :registrations

professor:
has_many :courses
has_many :colleges, through: :courses

course:
has_many :registrations
has_many :students, through: :registrations
belongs_to : college
belongs_to : professor

college:
has_many :courses
has_many :professors, through: :courses
belongs_to :university

registration:
belongs_to :student
belongs_to :course

university:
has_many :colleges

seed data order:
Universiry 
student
professor
college
course
registration