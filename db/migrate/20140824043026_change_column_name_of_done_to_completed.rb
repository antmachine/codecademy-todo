class ChangeColumnNameOfDoneToCompleted < ActiveRecord::Migration
  def change
  	rename_column :todos, :done, :completed
  end
end
