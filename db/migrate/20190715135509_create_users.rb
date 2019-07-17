class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      # t.string :family_name
      t.string :address
      t.string :img_url
      t.integer :age
      t.date :birthday
      t.boolean :parent, default: false
      t.boolean :married, default: false
      # t.belongs_to :family
      t.boolean :adult
      t.boolean :lost, default: false

      t.timestamps
    end
  end
end
