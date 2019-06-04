class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.text :description
      t.references :staff, foreign_key: true
      t.integer :staff_quantity
      t.string :staff_planning
      t.references :training, foreign_key: true
      t.integer :training_quantity
      t.references :equipment, foreign_key: true
      t.integer :equipment_quantity

      t.timestamps
    end
  end
end
