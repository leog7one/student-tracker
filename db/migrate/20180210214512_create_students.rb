class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :student_id_number
      t.integer :grade_level
      t.string :homeroom

      t.timestamps
    end
  end
end
