class AddMissionIdToStaffs < ActiveRecord::Migration[5.2]
  def change
    remove_column :staffs, :mission_id
    add_column :missions, :staff_id, :int
  end
end
