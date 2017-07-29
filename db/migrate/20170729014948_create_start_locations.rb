class CreateStartLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :start_locations do |t|
      t.integer :user_id
      t.integer :plan_id
      t.string :name
      t.text :description
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
