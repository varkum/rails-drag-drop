class ApplicantsController < ApplicationController
    before_action :set_applicant, only: [:show, :update]

    

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
        respond_to do |format|
            if @applicant.update({status: params[:section]})
                format.turbo_stream
            else 
                redirect_to root_path, status: :unprocessable_entity
            end
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