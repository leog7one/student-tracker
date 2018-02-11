class Admin::ReferralsController < ApplicationController
  def index
    
    @referrals = Referral.all
    @students = Student.all
  end
end
