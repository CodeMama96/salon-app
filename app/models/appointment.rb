class Appointment < ApplicationRecord
    belongs_to :user
    belongs_to :stylist
    has_many :services
    
end
