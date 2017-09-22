class AddTaskCompletionDateColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :task_completion_date, :date
  end
end
