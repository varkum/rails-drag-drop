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
        @applicant = Applicant.new(applicant_params)
        if @applicant.save
            redirect_to root_path
        else  
            render :new, status: :unprocessable_entity
        end
    end

    #PATCH/PUT /applicants/1
    def update
        if @applicant.update({status: params[:section]})
            redirect_to root_path
        end
    end

    private 

    def set_applicant
        @applicant = Applicant.find(params[:id])
    end

    def applicant_params
        params.require(:applicant).permit(:name, :status, :notes)
    end
end