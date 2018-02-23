class AddStudentIdToHomerooms < ActiveRecord::Migration[5.1]
  def change
    add_reference :homerooms, :student, foreign_key: true
  end
end
