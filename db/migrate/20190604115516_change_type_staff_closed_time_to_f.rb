class ChangeTypeStaffClosedTimeToF < ActiveRecord::Migration[5.2]
  def change
    change_column :staffs, :closed_time_hourly_rate, :float
  end
end
