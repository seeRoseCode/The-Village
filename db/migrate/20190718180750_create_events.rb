class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|

      t.string :name
      t.date :event_date
      t.belongs_to :calendar
      t.belongs_to :user#aka host
      t.integer :num_of_attendees

      t.timestamps
    end
  end
end
