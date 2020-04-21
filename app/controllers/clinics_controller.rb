class ClinicsController < ApplicationController
    def index
        clinics = Clinic.all

        render json: clinics
    end

    def show
        clinic = Clinic.find(params[:id])

        render json: clinic
    end
end
