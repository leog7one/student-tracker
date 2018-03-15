class GradeLevelsController < ApplicationController
  def new
    @grade_level = GradeLevel.new

  end

  def create
    @grade_level = GradeLevel.new(grade_level_params)

    respond_to do |format|
      if @grade_level.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def grade_level_params
    params.require(:grade_level).permit!
  end
end
