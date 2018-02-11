class AddOccuranceDateToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_column :referrals, :occurance_date, :datetime
  end
end
