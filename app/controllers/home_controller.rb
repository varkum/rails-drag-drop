class HomeController < ApplicationController
    def index
        @applicants = Applicant.all
    end
end