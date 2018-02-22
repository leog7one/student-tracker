class AddHomeroomIdToStudents < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :homeroom, foreign_key: true
  end
end
