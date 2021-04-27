class RemoveColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :tasks, :start_time, :datetime
    change_column :tasks, :end_time, :datetime
    change_column :tasks, :start_day, :datetime
  end
end
