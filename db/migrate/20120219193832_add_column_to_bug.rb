class AddColumnToBug < ActiveRecord::Migration
  def up
    add_column :bugs, :comment, :string
  end
  def down
    remove_column :bugs, :comment
  end
end
