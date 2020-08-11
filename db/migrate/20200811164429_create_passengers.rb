class CreatePassengers < ActiveRecord::Migration[6.0]
  def change
    create_table :passengers do |t|
      t.string :name 
      t.string :address 
      t.integer :number_of_rides 

      t.timestamps
    end
  end
end
