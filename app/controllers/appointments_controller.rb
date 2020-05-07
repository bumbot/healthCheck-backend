class AppointmentsController < ApplicationController
    def index
        appts = Appointment.all

        render json: appts, except: [:created_at, :updated_at]
    end

    def show
        appt = Appointment.find(params[:id])

        render json: appt, except: [:created_at, :updated_at]
    end

    def create
        time = ""
        hour = params["appointment_time"].slice(0,2)
        minutes = params["appointment_time"].slice(1,3)
        if params["appointment_hour"] == "am"
            if hour == "12"
                time = "00" + minutes
            else
                time = params["appointment_time"]
            end
        else
            if hour == "12"
                time = params["appointment_time"]
            else
                hour = hour.to_i + 12
                time = hour.to_s+ minutes
            end
        end

        appt = Appointment.new(user_id: params["user"], clinic_id: params["clinic"],
        appointment_date: params["appointment_date"], appointment_time: time)
        
        if appt
            appt.save
            user = User.find(params["user"])
            render json: {
                user_data: {
                    user_appts: user.appointments,
                    user_clinics: user.clinics,
                },
                error: false
            }
        else
            render json: {
                message: "Invalid appointment date/time",
                error: true
            }
        end
    end

    def destroy
        appt = Appointment.find(params["id"])

        if appt
            clinic = appt.clinic
            Appointment.delete(appt)

            render json: {
                clinic: clinic,
                error: false
            }
        else
            render json: {
                message: "Unable to delete appointment. Please try again later",
                error: true
            }
        end
    end
end
