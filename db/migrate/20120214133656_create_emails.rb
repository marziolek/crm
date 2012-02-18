class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :email_address
      t.string :title
      t.text :msg

      t.timestamps
    end
  end
end
