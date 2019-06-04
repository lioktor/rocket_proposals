class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :category
      t.text :description
      t.string :picture
      t.float :worked_time_hourly_rate
      t.integer :closed_time_hourly_rate

      t.timestamps
    end
  end
end
