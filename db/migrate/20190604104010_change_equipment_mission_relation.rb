class ChangeEquipmentMissionRelation < ActiveRecord::Migration[5.2]
  def change
    add_column :equipments, :mission_id, :string
  end
end
