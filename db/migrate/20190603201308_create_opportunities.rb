class CreateOpportunities < ActiveRecord::Migration[5.2]
  def change
    create_table :opportunities do |t|
      t.string :name
      t.text :description
      t.text :question_1
      t.text :question_2
      t.text :question_3
      t.string :status
      t.references :client, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
