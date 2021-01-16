class Service < ApplicationRecord
    has_many :users
    has_many :stylists
    has_many :appointments , through: :users
end
