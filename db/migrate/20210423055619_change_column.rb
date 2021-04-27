class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :tasks, :start_time, :string
    change_column :tasks, :end_time, :string
    change_column :tasks, :start_day, :string
  end
end
