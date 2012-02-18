class AddDefaultFieldToUsers < ActiveRecord::Migration
  def change
    change_column :users, :admin, :boolean, :default => 0
  end
end
