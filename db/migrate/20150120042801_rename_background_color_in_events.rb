class RenameBackgroundColorInEvents < ActiveRecord::Migration
  def change
  	rename_column :events, :backgrounColor, :event_color
  end
end
