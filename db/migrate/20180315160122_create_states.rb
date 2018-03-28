class CreateStates < ActiveRecord::Migration[5.0]
  def change
    create_table :states do |t|
      t.string :code, size: 2, null: false
      t.string :name

      t.timestamps
    end
  end
end
