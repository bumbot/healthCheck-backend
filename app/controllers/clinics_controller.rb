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
            new_patients: params["new_patients"],

            accept_walkin: params["walk_in"],
            limited_access: params["limited_access"],
            public_insurance: params["public_insurance"],
            medicaid: params["medicaid"],
            medicare: params["medicare"],
            private_employer_insurance: params["private_employer_insurance"],
            facility_type: params["facility_type"],
            private_insurance: params["private_insurance"],
            child_special_needs: params["child_special_needs"],
            elderly: params["elderly"],
            hiv: params["hiv"],
            homeless: params["homeless"],
            lgbt: params["lgbt"],
            intellect_disabled: params["intellect_disabled"],
            physical_disabled: params["physical_disabled"],
            mental_illness: params["mental_illness"],
            cardiology: params["cardiology"],
            endocrinology: params["endocrinology"],
            general_surgery: params["general_surgery"],
            hiv_aids: params["hiv_aids"],
            infectious_disease: params["infectious_disease"],
            nephrology: params["nephrology"],
            neurology: params["neurology"],
            obstetrics: params["obstetrics"],
            oncology: params["oncology"],
            opthalmology: params["opthalmology"],
            oral_surgery: params["oral_surgery"],
            orthopedic: params["orthopedic"],
            gastroenterology: params["gastroenterology"],
            pediatrics: params["pediatrics"],
            podiatry: params["podiatry"],
            pulmonary: params["pulmonary"],
            rheumatology: params["rheumatology"],
            reproductive_health: params["reproductive_health"],
            sti_test: params["sti_test"],
            urology: params["urology"],
            dentistry: params["dentistry"]



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
