class CohortsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @cohorts = Cohort.all
    end

    def show
        @cohort = Cohort.find(params[:id])
        @course = Course.find(@cohort.course_id)
        @instructor = Instructor.find(@cohort.instructor_id)
        @students = Student.where(cohort_id: @cohort.id)
        @unassigned_students = Student.where(cohort_id: nil)
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

    def addstudents
        @cohort = Cohort.find(params[:id])
        Student.where(id: params[:student_id]).update_all(cohort_id: @cohort.id)
    end

    def removestudent
        puts "blah"
        @student = Student.find(params[:student_id])
        @student.update_attribute(:cohort_id, nil)
    end

    def cohort_params
        params.require(:cohort).permit(:name, :class_type, :schedule, :classroom, :course_id, :start_date, :end_date, :instructor_id, :picture, :id)
    end
end