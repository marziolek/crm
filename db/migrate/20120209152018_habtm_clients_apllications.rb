class HabtmClientsApllications < ActiveRecord::Migration
  def up
	add_column :clients_applications, :client_id, :integer
	add_column :clinets_applications, :application_id, :integer
  end

  def down
	remove_column :clients_applications, :client_id
	remove_column :clinets_applications, :application_id
  end
end
