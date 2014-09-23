class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
  end

  def show
    @department = Department.find(params[:id])

    # @students = Student.find()

  end

  def create

    @newdep = Department.new(dep_params)

    if @newdep.save
      # render plain: 'Course created'
      redirect_to @newdep
    else
      render 'new'
    end

  end

  def new
  end

  def destroy
  end

  def edit
  end

  private
  def dep_params
    params.require(:departments).permit(:name)
  end
end
