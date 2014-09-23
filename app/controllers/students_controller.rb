class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @departments = Department.all
  end

  def create
    @newstudent = Student.new(students_params)
    if @newstudent.save
      # render plain: 'student created'
      redirect_to @newstudent
    else
      render 'new'
    end
    
  end

  def show

    @student = Student.find(params[:id])

  end

  def destroy

    Student.delete(params[:id])

    render 'delete'

  end

  private

  def students_params
   params.require(:students).permit(:name, :department_id)
 end

end
