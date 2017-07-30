class CreateJoinTableUserDrill < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :drill do |t|
      t.index [:user_id, :drill_id]
      t.index [:drill_id, :user_id]
      t.datetime :end_time
    end
  end
end
