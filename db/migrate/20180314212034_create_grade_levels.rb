class CreateGradeLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :grade_levels do |t|
      t.string :grade

      t.timestamps
    end
  end
end
