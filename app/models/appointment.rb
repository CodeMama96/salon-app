class Appointment < ApplicationRecord
    belongs_to :user
    belongs_to :service

    validates :date, presence: :true, uniqueness: { scope: :time,
    message: "Appointment is unavailable, please submit again." }
    
    scope :upcoming, -> {where('date>?', Date.today)}

end
