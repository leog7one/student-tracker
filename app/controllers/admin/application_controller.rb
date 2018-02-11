class Admin::ApplicationController < ApplicationController
  before_action :authorize_admin!

  def index
  	@users = User.all
  end

  private

	def authorize_admin!
		authenticate_user!

		unless current_user.admin?
			flash[:alert] = "You do not have permission to perform this action"
			redirect_to students_path
		end
	end
end
