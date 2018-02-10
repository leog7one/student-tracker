class AddCategoryIdToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_reference :referrals, :category, foreign_key: true
  end
end
