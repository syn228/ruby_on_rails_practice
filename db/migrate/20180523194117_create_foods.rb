class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.date :expires_on
      t.integer :fridge_id

      t.timestamps
    end
  end
end
