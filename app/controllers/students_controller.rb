class StudentsController < ApplicationController

  def index
    @students = Student.all

  end

  # def new
  #   @student = Student.new
  #   render :new
  # end

  def create
    #use individual params when using form_tag
    Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to "/students"
  end

  def show
    @student = Student.find(params[:id])
  end

end
