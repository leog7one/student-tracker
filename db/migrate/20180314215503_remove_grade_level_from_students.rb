class RemoveGradeLevelFromStudents < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :grade_level, :string
  end
end
