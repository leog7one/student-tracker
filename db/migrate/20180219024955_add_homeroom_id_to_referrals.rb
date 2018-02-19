class AddHomeroomIdToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_reference :referrals, :homeroom, foreign_key: true
  end
end
