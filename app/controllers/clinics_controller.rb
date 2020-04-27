class ClinicsController < ApplicationController
    def index
        clinics = Clinic.all

        render json: clinics, except: [:created_at, :updated_at]
    end

    def show
        clinic = Clinic.find(params[:id])

        render json: clinic, except: [:created_at, :updated_at]
    end

    def create
        clinic = Clinic.find_or_create_by(
            name: params["name"],
            address: params["address"],
            city: params["city"],
            state: params["state"],
            zip: params["zip"],
            address_id: params["address_id"],
            phone_number: params["phone_number"],
            website_url: params["website_url"],
            latitude: params["latitude"],
            longitude: params["longitude"],
            new_patients: params["new_patients"]
        )
        if clinic
            render json: {
                error: false
            }
        else
            render json: {
                message: `unable to add clinic number: #{clinic.address_id}`,
                error: true
            }
        end
    end
end
