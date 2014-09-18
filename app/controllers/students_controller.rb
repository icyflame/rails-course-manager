class studentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
  end

  def create
    @newstudent = Student.new(student_params)

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

  def student_params
   params.require(:students).permit(:name, :dept)
 end

end
