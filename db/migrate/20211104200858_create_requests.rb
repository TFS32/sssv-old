class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :instrument
      t.string :service
      t.string :location
      t.string :status
      t.references :citizen, index: true, foreign_key: { to_table: :users }
      t.references :tech, foreign_key: { to_table: :users }
      t.text :description
      t.text :report

      t.timestamps
    end
  end
end
