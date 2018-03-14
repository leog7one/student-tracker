class AddGradeLevelIdToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_reference :referrals, :grade_level, foreign_key: true
  end
end
