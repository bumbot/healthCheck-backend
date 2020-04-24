class AppointmentsController < ApplicationController
    def index
        appts = Appointment.all

        render json: appts
    end

    def show
        appt = Appointment.find(params[:id])

        render json: appt
    end

    def create
        appt = Appointment.create(user_id: params["user"], clinic_id: params["clinic"],
        appointment_date: params["appointment_date"], appointment_time: params["appointment_time"])

        # check if valid appointment, and whether time is open during clinic's hours
        if appt # && params["clinic"].hours is open
            render json: {
                appointment_data: appt,
                error: false
            }
        else
            render json: {
                message: "Invalid appointment date/time",
                error: true
            }
        end
    end
end
