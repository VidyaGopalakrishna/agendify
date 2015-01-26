class RenameTitleInEvents < ActiveRecord::Migration
  def change
  	rename_column :events, :event_name, :title
  end
end
