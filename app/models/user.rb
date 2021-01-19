class User < ApplicationRecord
    has_many :appointments
    has_many :services, through: :appointment
    
    has_secure_password
end
