class ChangeUserReferenceToManagerReference < ActiveRecord::Migration[5.2]
  def change
    remove_columns :users, :user_id
    add_reference :users, :manager, index: true, foreign_key: {to_table: :users}
  end
end
