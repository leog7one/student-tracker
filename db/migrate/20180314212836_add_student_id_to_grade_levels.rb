class AddStudentIdToGradeLevels < ActiveRecord::Migration[5.1]
  def change
    add_reference :grade_levels, :student, foreign_key: true
  end
end
