class CoursesController < ApplicationController

    def index
        @courses = Course.all

    end

    def show
        puts "hello course"
    end
end
