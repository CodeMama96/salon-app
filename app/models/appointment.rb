class Appointment < ApplicationRecord
    belongs_to :user
    belongs_to :service

    validates :date, uniqueness: { scope: :time,
    message: "Appointment is unavailable, please submit again." }
    
end
