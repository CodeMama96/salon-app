class User < ApplicationRecord
    has_many :appointments
    has_many :services, through: :appointment
    
    has_secure_password
    #skip_before_action :verify_authenticity_token

     def self.from_omniauth(response)
        User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
            u.name = response[:info][:name]
            u.email = response[:info][:email]
            u.password = SecureRandom.hex(15)
        end
    end
    # validates :email, uniqueness: {message: "%{value} is already in use.  Please select another or login."}
    validates :email, presence: true
end
