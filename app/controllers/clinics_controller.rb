class ClinicsController < ApplicationController
    def index
        clinics = Clinic.all

        render json: clinics, except: [:created_at, :updated_at]
    end

    def show
        clinic = Clinic.find(params[:id])

        render json: clinic, except: [:created_at, :updated_at]
    end
end
