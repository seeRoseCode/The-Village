class CreateFamilies < ActiveRecord::Migration[5.2]
  def change
    create_table :families do |t|
      t.string :name
      t.string :img_url
      t.belongs_to :village

      t.timestamps
    end
  end
end
