class CreateMailedaddresses < ActiveRecord::Migration
  def change
    create_table :mailedaddresses do |t|
      t.string :branch
      t.string :drop
      t.decimal :piecepostage
      t.string :zipcode
      t.decimal :ranktotal
      t.string :zipplus4
      t.string :deliverypoint

      t.timestamps
    end
  end
end
