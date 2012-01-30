class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :postal_code
      t.integer :regon

      t.timestamps
    end
  end
end
