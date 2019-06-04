class ChangeStaffMissionRelation < ActiveRecord::Migration[5.2]
  def change
    add_column :staffs, :mission_id, :string
  end
end
