class AddColumnTodepartment < ActiveRecord::Migration[5.2]
  def change
    add_column :departments, :description, :text
  end
end
