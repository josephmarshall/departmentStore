class DepartmentsController < ApplicationController
  

  def index
    @departments = Department.all
  end

  def show
    @department = Department.find(params[:id])
  end

  def edit
    @department = Department.find(params[:id])
    render partial: "form"
  end

  def update
    @department = Department.find(params[:id])
    if @department.update(department_params)
    redirect_to departments_path
    else
    render partial: "form"
    end
  end

  def new
    @department = Department.new
    render partial: "form"
  end

  def create
    @department = Department.new(department_params)
    if @department.save
    redirect_to departments_path
    else
    render partial: "form"
    end
  end


  def destroy
    @department = Department.find(params[:id]).destroy
    redirect_to departments_path
  end

  private

  def department_params
    params.require(:department).permit(:name)
  end

end
