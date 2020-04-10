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
        user = User.create(user_params)
        payload = {user_id: user.id}
        token = JWT.encode(payload, ENV["secret"], 'HS256')
        render json: {user:  user, token: token}
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: { success: "Your account has been deleted"}
    end


    private 
    def user_params
        params.permit(:email, :password, :name)
    end
end
