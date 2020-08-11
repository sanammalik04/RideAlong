class Driver < ApplicationRecord
    has_many :rides
    has_many :passengers, through: :rides

    validates :name, presence: true, uniqueness: true 
    validates :car_make, :car_model, presence: true
end
