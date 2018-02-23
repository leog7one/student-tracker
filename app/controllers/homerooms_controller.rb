class HomeroomsController < ApplicationController

  def new
    @homeroom = Homeroom.new

  end

  def create
    @homeroom = Homeroom.new(homeroom_params)

    respond_to do |format|
      if @homeroom.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def homeroom_params
    params.require(:homeroom).permit!
  end

  # def student_params
  #   params.require(:student).permit!
  #   #(:first_name, :last_name, :student_id_number, :grade_level, homeroom_attributes:[:room_number])
  # end
end
