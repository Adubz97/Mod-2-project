class College < ApplicationRecord
  
has_many :courses
has_many :professors, through: :courses
belongs_to :university

end
