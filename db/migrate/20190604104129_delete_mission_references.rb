class DeleteMissionReferences < ActiveRecord::Migration[5.2]
  def change
    remove_column :missions, :staff_id
    remove_column :missions, :equipment_id
    remove_column :missions, :training_id
  end
end
