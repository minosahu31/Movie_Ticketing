class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :theater_id
      t.string :address

      t.timestamps null: false
    end
  end
end
