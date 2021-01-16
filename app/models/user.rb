class User < ApplicationRecord
    has_many :appointments
    has_many :services, through: :appointment
    has_many :stylists
    
    has_secure_password
end
