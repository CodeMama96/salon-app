class Appointment < ApplicationRecord
    belongs_to :user
    belongs_to :service

    validates :date, presence: :true, uniqueness: { scope: :time,
    message: "Appointment is unavailable, please submit again." }
    
    scope :order_by_date, -> {order("date ASC")}

end
