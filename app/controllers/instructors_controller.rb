class InstructorsController < ApplicationController

    def index
        @instructors = Instructor.all
    end

    def show
        @instructor = Instructor.find(params[:id])
        @cohorts = Cohort.where(instructor_id: @instructor.id)
        @unassigned_cohorts = Cohort.where(instructor_id: nil)
    end

    def edit
        @instructor = Instructor.find(params[:id])
    end

    def update
        @instructor = Instructor.find(params[:id])
        @instructor.update(instructor_params)
        redirect_to '/instructors'
    end

    def destroy
        Instructor.find(params[:id]).destroy
        redirect_to '/instructors'
    end

    def new 
        @instructor = Instructor.new
    end

    def create 
        Instructor.create(instructor_params)
        redirect_to '/instructors'
    end

    def addcohorts
        @instructor = Instructor.find(params[:id])
        Cohort.where(id: params[:cohort_id]).update_all(instructor_id: @instructor.id)
    end

    def removecohort
        @cohort = Cohort.find(params[:cohort_id])
        @cohort.update_attribute(:instructor_id, nil)
    end

    def instructor_params
        params.require(:instructor).permit(:first_name, :last_name, :email, :phone, :user_id, :userpic, :birthday, :salary, :education, :id)
    end

end

