class AddUserToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_reference :referrals, :user, foreign_key: true
  end
end
