class Admin::HomeroomsController < ApplicationController
  def index
    @homerooms = Homeroom.all
    @referrals = Referral.all
    @students = Student.all
    @grade_levels = GradeLevel.all
  end

  def show
    @homerooms = Homeroom.all
    @homeroom = Homeroom.find(params[:id])
    @students = @homeroom.students

  end
end