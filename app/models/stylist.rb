class Stylist < ApplicationRecord
   
    has_many :services
    has_many :users, through: :appointment
end
