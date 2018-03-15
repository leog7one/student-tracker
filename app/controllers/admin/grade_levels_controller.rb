class Admin::GradeLevelsController < ApplicationController
  def index
    @grade_levels = GradeLevel.all
    @homerooms = Homeroom.all
    @referrals = Referral.all
    @students = Student.all
  end

  def show
    @grade_levels = GradeLevel.all
    @grade_level = GradeLevel.find(params[:id])
    @homerooms = @grade_level.homerooms
    @homeroom = Homeroom.find(params[:id])
    @students = @grade_level.students
  end

end