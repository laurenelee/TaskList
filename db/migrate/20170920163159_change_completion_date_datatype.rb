class ChangeCompletionDateDatatype < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :completion_date, :date
  end
end
