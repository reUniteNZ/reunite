class CreateDrills < ActiveRecord::Migration[5.1]
  def change
    create_table :drills do |t|
      t.integer :plan_id

      t.timestamps
    end
  end
end
