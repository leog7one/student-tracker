class HomeroomsController < ApplicationController

  def new
    @homeroom = Homeroom.new
    @student = @homeroom.students.build(student_params)
  end

  def homeroom_params
    params.require(:homeroom).permit(:room_number, students_attributes:[:student_id, :first_name, :last_name, :student_id_number, :grade_level ])
  end
end
