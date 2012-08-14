class CreateHouseholds < ActiveRecord::Migration
  def change
    create_table :households do |t|
      t.string :zip
      t.string :plus_4
      t.string :delivery_point
      t.string :address
      t.integer :epsilon_key

      t.timestamps
    end
  end
end
