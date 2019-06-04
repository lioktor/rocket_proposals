class CreateQuotations < ActiveRecord::Migration[5.2]
  def change
    create_table :quotations do |t|
      t.integer :margin_rate
      t.integer :selling_price
      t.date :starting_date
      t.date :end_date
      t.references :opportunity, foreign_key: true

      t.timestamps
    end
  end
end
