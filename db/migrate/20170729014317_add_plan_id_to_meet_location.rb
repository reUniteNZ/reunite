class AddPlanIdToMeetLocation < ActiveRecord::Migration[5.1]
  def change
    add_column :meet_locations, :plan_id, :integer
  end
end
