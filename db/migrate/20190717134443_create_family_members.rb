class CreateFamilyMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :family_members do |t|

      t.belongs_to :user
      t.belongs_to :related_user

      t.timestamps
    end
  end
end
