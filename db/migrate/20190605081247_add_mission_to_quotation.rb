class AddMissionToQuotation < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotations, :mission, foreign_key: true
  end
end
