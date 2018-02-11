class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		@referral = Referral.find(params[:id])
		@referrals = Referral.all
	end
end