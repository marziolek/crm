class NewFieldForUser < ActiveRecord::Migration
  def up
		add_column :users, :client_id, :integer
  end

  def down
		remove_column :users, :client_id, :integer
  end
end
