class Student < ApplicationRecord

has_many :registrations
has_many :courses, through: :registrations
has_secure_password

end
