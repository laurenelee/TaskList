class ChangeCompletionDateDataType < ActiveRecord::Migration[5.1]
  def change
    change_column(:tasks, :completion_date, :string)
  end
end
