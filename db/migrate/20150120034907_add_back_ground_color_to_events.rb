class AddBackGroundColorToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :backgrounColor, :string
  end
end
