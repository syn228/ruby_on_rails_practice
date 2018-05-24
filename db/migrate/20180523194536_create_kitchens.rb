class CreateKitchens < ActiveRecord::Migration[5.2]
  def change
    create_table :kitchens do |t|
      t.references :user, foreign_key: true
      t.references :fridge, foreign_key: true

      t.timestamps
    end
  end
end
