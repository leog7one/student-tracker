class StudentsController < ApplicationController
  require 'csv'

  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all

    respond_to do |format|
      format.json
      format.js
      format.html
    end
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @referrals = @student.referrals
    @referral = Referral.new
  end

  def upload
    CSV.foreach(params[:leads].path, headers: true) do |lead|
        grade_level = GradeLevel.find_or_create_by(grade: lead[3])
        homeroom = Homeroom.find_or_create_by(room_number: lead[4], grade_level_id: grade_level.id)
        student = Student.create(first_name: lead[0], last_name: lead[1], student_id_number: lead[2], grade_level_id: grade_level.id, homeroom_id: homeroom.id)
    end
    redirect_to students_path
  end

  # GET /students/new
  def new
    @student = Student.new
    @homeroom = @student.build_homeroom

  end
  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    
    @student = Student.new(student_params)
    @student.homeroom = Homeroom.find_or_create_by(params[:room_number])
    @student.grade_level = GradeLevel.find_or_create_by(params[:grade])
    # @homeroom = @student.build_homeroom(homeroom_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit!
      #(:first_name, :last_name, :student_id_number, :grade_level, homeroom_attributes: [:homeroom_id, :room_number])
    end
    
    # def homeroom_params
    #   params.permit(:room_number)
    # end
end
