class Course < ApplicationRecord

has_many :registrations
has_many :students, through: :registrations
belongs_to :college
belongs_to :professor

end
