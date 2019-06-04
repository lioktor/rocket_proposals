class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :linkedin
      t.string :category
      t.string :function
      t.string :company_name
      t.integer :company_SIRET
      t.string :company_picture
      t.text :company_address
      t.string :activity_sector
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
