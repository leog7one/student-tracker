class AddGradeLevelIdToHomerooms < ActiveRecord::Migration[5.1]
  def change
    add_reference :homerooms, :grade_level, foreign_key: true
  end
end
