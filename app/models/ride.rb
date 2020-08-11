class Ride < ApplicationRecord
    belongs_to :passenger
    belongs_to :driver
    validates :driver_id, :passenger_id, presence: true
    



end
