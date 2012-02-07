class AddClientIdToContactPeople < ActiveRecord::Migration
  def change
    add_column :contact_people, :client_id, :integer
  end
end
