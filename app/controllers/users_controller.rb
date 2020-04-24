class UsersController < ApplicationController
    def index
        users = User.all

        render json: users
    end

    def show
        user = User.find(params[:id])

        render json: user
    end

    def create
        user = User.create(username: params["username"], password: params["password"])

        if user #&& user.username is unique
            render json: user
        else
            render json: {
                message: "Unable to create new user"
                error: true
            }
        end
    end
end
