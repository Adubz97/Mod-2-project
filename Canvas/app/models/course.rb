class Course < ApplicationRecord

has_many :registrations, dependent: :destroy
has_many :students, through: :registrations
belongs_to :college
belongs_to :professor


def self.destroy_course(course)
  #go through all registrations andd delete all registrations where course is self
  #destroy the course by itself
  
end

end
