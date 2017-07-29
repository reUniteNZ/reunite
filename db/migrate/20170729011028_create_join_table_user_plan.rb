class CreateJoinTableUserPlan < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :plans do |t|
      t.index [:user_id, :plan_id]
      t.index [:plan_id, :user_id]
    end
  end
end
