class RemoveMissionIdFromQuotations < ActiveRecord::Migration[5.2]
  def change
    remove_column :quotations, :mission_id
  end
end
