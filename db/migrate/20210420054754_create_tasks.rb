class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :content
      t.date :start_day
      t.date :end_day
      t.text :all_day

      t.timestamps
    end
  end
end
