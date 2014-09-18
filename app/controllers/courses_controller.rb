class CoursesController < ApplicationController
  def index
  	@courses = Course.all
  end

  def new
  end

  def create
  	@newcourse = Course.new(course_params)

  	if @newcourse.save
      index
    else
      render 'new'
    end
    
  end

  def show

    @course = Course.find(params[:id])

  end

  def destroy

    Course.delete(params[:id])

    render 'delete'

  end

  private

  def course_params
   params.require(:courses).permit(:code, :name, :dept)
 end

end
