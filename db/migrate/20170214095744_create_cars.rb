class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.integer :identification_number
      t.string :manufacturer

      t.timestamps
    end
  end
end
