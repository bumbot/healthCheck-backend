class AuthController < ApplicationController
    def create
        user = User.find_by(username: params["username"])

        if user && user.password == params["password"]
            render json: {
                user_data: user,
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