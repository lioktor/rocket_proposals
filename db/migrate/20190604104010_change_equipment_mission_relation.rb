class ChangeEquipmentMissionRelation < ActiveRecord::Migration[5.2]
  def change
    add_column :equipment, :mission_id, :string
  end
end
