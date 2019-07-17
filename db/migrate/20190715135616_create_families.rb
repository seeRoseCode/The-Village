class CreateFamilies < ActiveRecord::Migration[5.2]
  def change
    create_table :families do |t|

      t.belongs_to :user
      t.belongs_to :related_user

      t.timestamps
    end
  end
end
