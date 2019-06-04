class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :linkedin, :string
    add_column :users, :avatar, :string
    add_column :users, :category, :string
    add_column :users, :function, :string
    add_column :users, :company, :string
    add_column :users, :annual_objective, :integer
    add_column :users, :objective_done, :integer
    add_reference :users, :user, foreign_key: true
  end
end
