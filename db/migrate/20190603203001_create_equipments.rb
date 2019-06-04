class CreateEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :equipments do |t|
      t.string :category
      t.text :description
      t.integer :cost
      t.string :picture

      t.timestamps
    end
  end
end
