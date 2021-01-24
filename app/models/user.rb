class User < ApplicationRecord
    has_many :appointments
    has_many :services, through: :appointment
    has_secure_password

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, on: :create

     def self.from_omniauth(response)
        User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
            u.name = response[:info][:name]
            u.email = response[:info][:email]
            u.password = SecureRandom.hex(15)
        end
    end

end
