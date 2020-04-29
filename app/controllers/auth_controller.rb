class AuthController < ApplicationController
    def create
        user = User.find_by(username: params["username"])

        if user && user.authenticate(params["password"])
            render json: {
                user_data: user.username,
                user_appts: user.appointments,
                user_clinics: user.clinics,
                error: false
            }
        else
            render json: {
                message: "Invalid username or password",
                error: true
            }
        end
    end
end