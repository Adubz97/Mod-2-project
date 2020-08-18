class Professor < ApplicationRecord

has_many :courses
has_many :colleges, through: :courses
has_secure_password

end
