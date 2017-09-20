class ChangeCompletionDateDataTpe < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :status, :boolean
  end
end
