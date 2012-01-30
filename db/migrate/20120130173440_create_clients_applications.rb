class CreateClientsApplications < ActiveRecord::Migration
  def change
    create_table :clients_applications do |t|
      t.date :start_date
      t.date :expire_date
      t.string :license_type
      t.integer :number_of_computers
      t.string :product_key

      t.timestamps
    end
  end
end
