class AddDefaultToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :user_type, :string, default: "citizen"
  end
end
