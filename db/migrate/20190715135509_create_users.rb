class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :address
      t.string :img_url
      t.string :banner_url, default: "https://im5.ezgif.com/tmp/ezgif-5-f7dfb7993e43.jpg"
      t.integer :age
      t.date :birthday
      t.boolean :parent, default: false
      t.boolean :married, default: false
      t.boolean :adult, default: true
      t.string :status, default: "safe"

      t.timestamps
    end
  end
end
