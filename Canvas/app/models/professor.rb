class Professor < ApplicationRecord

has_many :courses
has_many :colleges, through: :courses
end
