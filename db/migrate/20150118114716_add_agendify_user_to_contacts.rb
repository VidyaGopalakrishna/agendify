class AddAgendifyUserToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :agendify_user_id, :integer
  end
end
