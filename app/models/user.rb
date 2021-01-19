class User < ApplicationRecord
    has_many :appointments
    has_many :services, through: :appointment
    
    has_secure_password
    validates :email, uniqueness: {message: "%{value} is already in use.  Please select another or login."}
    validates :email, presence: true
end
