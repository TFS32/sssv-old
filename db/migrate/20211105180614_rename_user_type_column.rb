class RenameUserTypeColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column(:users, :user_type, :role)
  end
end
