class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.references :state, foreign_key: true
      t.string :zipcode

      t.timestamps
    end
  end
end
