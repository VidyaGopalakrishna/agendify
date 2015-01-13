class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :event_date
      t.string :event_name

      t.timestamps null: false
    end
  end
end
