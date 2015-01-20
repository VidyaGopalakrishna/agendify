class AddUserToEvents < ActiveRecord::Migration
  def change
    add_column :events, :agendify_user_id, :integer
  end
end
