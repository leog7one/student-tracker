class RemoveHomeroomFromStudents < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :homeroom, :string
  end
end
