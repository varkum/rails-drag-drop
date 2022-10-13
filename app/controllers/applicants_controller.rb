class ApplicantsController < ApplicationController
    before_action :set_applicant, only: [:show, :update]

    #GET /applicants/1
    def show

    end

    #GET /applicants/new
    def new
        @applicant = Applicant.new
    end

    #POST /applicants/new
    def create

    end

    #PATCH/PUT /applicants/1
    def update

    end

    private 

    def set_applicant
        @applicant = Applicant.find(params[:id])
    end
end