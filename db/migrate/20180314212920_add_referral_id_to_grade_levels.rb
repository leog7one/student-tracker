class AddReferralIdToGradeLevels < ActiveRecord::Migration[5.1]
  def change
    add_reference :grade_levels, :referral, foreign_key: true
  end
end
