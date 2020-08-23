class Student < ApplicationRecord

has_many :registrations
has_many :courses, through: :registrations
has_secure_password

validates :username, uniqueness: {case_sensitive: false}
validates :password, length: {minimum: 6}


end

