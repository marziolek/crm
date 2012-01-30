class CreateContactPeople < ActiveRecord::Migration
  def change
    create_table :contact_people do |t|
      t.string :name
      t.string :surname
      t.string :position
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
