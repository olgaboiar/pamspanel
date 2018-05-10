class CohortsController < ApplicationController
    
    def index
        @cohorts = Cohort.all
        @courses = Course.all

        @x = set_cohort
    end

    def show
        @cohort = Cohort.find(params[:id])
    end

    def edit
        @cohort = Cohort.find(params[:id])
    end

    def update
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort_params)
        redirect_to '/cohorts'
    end

    def destroy
        Cohort.find(params[:id]).destroy
        redirect_to '/cohorts'
    end

    def new 
        @cohort = Cohort.new
    end

    def create 
        Cohort.create(cohort_params)
        redirect_to '/cohorts'
    end

    def cohort_params
        params.require(:cohort).permit(:name, :class_type, :schedule, :classroom, :course_id, :start_date, :end_date, :instructor_id, :picture, :id)
    end
end