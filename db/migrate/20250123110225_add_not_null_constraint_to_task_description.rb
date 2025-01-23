class AddNotNullConstraintToTaskDescription < ActiveRecord::Migration[7.1]
  def change
    change_column_null :tasks, :description, false
  end
end
