class ChangeGradeLevelToString < ActiveRecord::Migration[5.1]
  def change
    change_column :students, :grade_level, :string
  end
end
