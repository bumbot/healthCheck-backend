class AppointmentsController < ApplicationController
    def index
        appts = Appointment.all

        render json: appts
    end

    def show
        appt = Appointment.find(params[:id])

        render json: appt
    end
end
