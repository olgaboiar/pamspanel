class CoursesController < ApplicationController

    def index
        @courses = Course.all
    end

    def show
        @course = Course.find(params[:id])
    end

    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        @course.update(course_params)
        redirect_to '/courses'
    end

    def destroy
        Course.find(params[:id]).destroy
        redirect_to '/courses'
    end

    def new 
        @course = Course.new
    end

    def create 
        Course.create(course_params)
        redirect_to '/courses'
    end

    def course_params
        params.require(:course).permit(:title, :hours, :description, :picture, :id)
      end
end

