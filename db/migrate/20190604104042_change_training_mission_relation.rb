class ChangeTrainingMissionRelation < ActiveRecord::Migration[5.2]
  def change
    add_column :trainings, :mission_id, :string
  end
end
