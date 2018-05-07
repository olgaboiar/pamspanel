class InstructorsController < ApplicationController

    def index
        @instructors = Instructor.all
    end

    def show
        @instructor = Instructor.find(params[:id])
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

    def instructor_params
        params.require(:instructor).permit(:first_name, :last_name, :email, :phone, :user_id, :userpic, :birthday, :salary, :education, :id)
    end

end

