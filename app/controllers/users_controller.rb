class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, status: :ok
    end

    def show
        user = find_user
        render json: user, status: :ok
    end

    def create
        user = User.create!(user_param)
        render json: user, status: :created
    end

    def update
        user = find_user
        user.update!(user_params)
        render json: user, status: :ok
    end

    def destroy
        user = find_user
        user.destroy
        head :no_content
    end


    private

    def user_params
        params.permit(:first_name, :last_name, :email, :img, :username, :password, :password_confirmation)
    end

    def find_user
        User.find(params[:id])
    end

end
