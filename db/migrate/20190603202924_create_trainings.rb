class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.string :category
      t.text :description
      t.integer :educational_cost
      t.integer :duration
      t.string :icon

      t.timestamps
    end
  end
end
