class FixEventColumnNames < ActiveRecord::Migration
  def change
  	rename_column :events, :event_date, :start
  end
end
