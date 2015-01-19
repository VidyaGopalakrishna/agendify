class AddNotesToEvents < ActiveRecord::Migration
  def change
    add_column :events, :event_notes, :text
  end
end
