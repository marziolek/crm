class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.integer :application_id
      t.integer :user_id
      t.string :topic
      t.string :description
      t.integer :status_id, :default => 1

      t.timestamps
    end
  end
end
