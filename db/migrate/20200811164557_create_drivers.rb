class CreateDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :car_model
      t.string :car_make

      t.timestamps
    end
  end
end
