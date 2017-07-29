class AddStartTimeToDrill < ActiveRecord::Migration[5.1]
  def change
    add_column :drills, :start_time, :datetime
  end
end
