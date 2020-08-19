class Professor < ApplicationRecord

has_many :courses
has_many :colleges, through: :courses
has_secure_password

validates :username, uniqueness: {case_sensitive: false}
validates :password, length: {minimum: 6}

end