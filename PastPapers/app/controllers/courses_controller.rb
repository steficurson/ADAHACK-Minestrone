class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    render :show
  end

  def search
    @courses = Course.where("name LIKE ?", "%#{params[:query]}%")
  end
end
