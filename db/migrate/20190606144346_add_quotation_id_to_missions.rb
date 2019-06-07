class AddQuotationIdToMissions < ActiveRecord::Migration[5.2]
  def change
    add_column :missions, :quotation_id, :integer
  end
end
