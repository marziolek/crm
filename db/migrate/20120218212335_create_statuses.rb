class CreateStatuses < ActiveRecord::Migration
  def up
    create_table :statuses do |t|
      t.string :name

      t.timestamps
    end

	Status.create :name => "nowy"
	Status.create :name => "przyjety"
	Status.create :name => "odrzucony"
	Status.create :name => "rozwijany"
	Status.create :name => "rozwiazany"
  end
  def down
    drop_table :statuses
  end
end
