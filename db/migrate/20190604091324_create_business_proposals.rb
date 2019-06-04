class CreateBusinessProposals < ActiveRecord::Migration[5.2]
  def change
    create_table :business_proposals do |t|
      t.references :quotation, foreign_key: true

      t.timestamps
    end
  end
end
