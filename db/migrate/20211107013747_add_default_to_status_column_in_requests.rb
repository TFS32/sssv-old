class AddDefaultToStatusColumnInRequests < ActiveRecord::Migration[6.0]
  def change
    change_column :requests, :status, :string, default: "open"
  end
end
