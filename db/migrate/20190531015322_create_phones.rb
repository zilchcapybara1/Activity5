class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :name
      t.string :brand
      t.integer :year_released
      t.boolean :camera
      t.decimal :mpixels
      t.string :internal_storage
      t.integer :sim_slots
      t.integer :size_of_screen
      t.string :operating_system
      t.decimal :num_in_stock

      t.timestamps
    end
  end
end
