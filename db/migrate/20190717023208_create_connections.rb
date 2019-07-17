class CreateConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :connections do |t|
      t.timestamps

      t.belongs_to :user
      t.belongs_to :connected_user
      t.index [:user_id, :connected_user_id], unique: true
    end
  end
end
