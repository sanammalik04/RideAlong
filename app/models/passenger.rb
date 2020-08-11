class Passenger < ApplicationRecord
    has_many :rides
    has_many :drivers, through: :rides

    validates :name, presence: true, uniqueness: true 
end
