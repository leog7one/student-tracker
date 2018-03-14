class AddHomeroomIdToGradeLevels < ActiveRecord::Migration[5.1]
  def change
    add_reference :grade_levels, :homeroom, foreign_key: true
  end
end
