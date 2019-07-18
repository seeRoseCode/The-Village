class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :address
      t.string :img_url
      t.integer :age
      t.date :birthday
      t.boolean :parent, default: false
      t.boolean :married, default: false
      t.boolean :adult
      t.boolean :lost, default: false

      t.timestamps
    end
  end
end
