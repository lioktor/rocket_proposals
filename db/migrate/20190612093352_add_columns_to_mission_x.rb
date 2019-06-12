class AddColumnsToMissionX < ActiveRecord::Migration[5.2]
  def change
    add_column :mission_staffs, :quantity, :integer
    add_column :mission_staffs, :planning, :string
    add_column :mission_equipments, :quantity, :integer
    add_column :mission_trainings, :quantity, :integer
  end
end
