class AddGradeLevelIdToStudents < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :grade_level, foreign_key: true
  end
end
