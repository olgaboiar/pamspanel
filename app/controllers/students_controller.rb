class StudentsController < ApplicationController
    helper_method :sort_column, :sort_direction

    def index
        @students = Student.all.order("#{sort_column} #{sort_direction}").paginate(:page => params[:page], :per_page => 10)
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
    end

    def destroy
        Student.find(params[:id]).destroy
        redirect_to '/students'
    end

    def new 
        @student = Student.new
    end

    def create 
        Student.create(student_params)
        redirect_to '/students'
    end

    def sortable_columns
        ["first_name", "last_name"]
      end
    
    def sort_column
        sortable_columns.include?(params[:column]) ? params[:column] : "last_name"
    end
    
    def sort_direction
        %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name, :email, :phone, :user_id, :cohort_id, :birthday, :education, :id)
    end
end
