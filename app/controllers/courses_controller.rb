class CoursesController < ApplicationController

    def index
        @courses = Course.all
    end

    def show
        @course = Course.find(params[:id])
        @cohorts = Cohort.where(course_id: @course.id)
        @unassigned_cohorts = Cohort.where(course_id: nil)
        # @course = Course.find(@cohort.course_id)
        
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

    def addcohorts
        @course = Course.find(params[:id])
        Cohort.where(id: params[:cohort_id]).update_all(course_id: @course.id)
    end

    def removecohort
        @cohort = Cohort.find(params[:cohort_id])
        @cohort.update_attribute(:course_id, nil)
    end


    def course_params
        params.require(:course).permit(:title, :hours, :description, :picture, :id)
    end
end

