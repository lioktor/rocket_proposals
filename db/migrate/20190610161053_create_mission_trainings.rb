class CreateMissionTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :mission_trainings do |t|
      t.references :mission, foreign_key: true
      t.references :training, foreign_key: true

      t.timestamps
    end
  end
end
