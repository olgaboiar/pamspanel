class ApplicationController < ActionController::Base
    def set_test
        @test = "test!"
      end

      def set_cohort
        Cohort.first
      end
end
