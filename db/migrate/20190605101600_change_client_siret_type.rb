class ChangeClientSiretType < ActiveRecord::Migration[5.2]
  def change
    change_column :clients, :company_SIRET, :bigint
  end
end
