class CreateMissionStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :mission_staffs do |t|
      t.references :mission, foreign_key: true
      t.references :staff, foreign_key: true

      t.timestamps
    end
  end
end
