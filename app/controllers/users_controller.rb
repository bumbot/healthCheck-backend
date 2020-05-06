class UsersController < ApplicationController
    def index
        users = User.all

        render json: users, except: [:created_at, :updated_at]
    end

    def show
        user = User.find(params[:id])

        render json: user, except: [:created_at, :updated_at]
    end

    def create
        user = User.new(username: params["username"], password: params["password"])

        isUnique = true

        User.all.each do |u|
            if user.username == u.username
                isUnique = false
            end
        end


        if user && isUnique
            user.save
            render json: {
                user_data: user.username,
                user_appts: user.appointments,
                user_clinics: user.clinics,
                error: false
            }
        else
            render json: {
                message: "Unable to create new user; Username already exists",
                error: true
            }
        end
    end
end
