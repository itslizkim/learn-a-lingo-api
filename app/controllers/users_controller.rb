class UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        render json: user
    end
    
    def create
        user = User.create(user_params)
        payload = {user_id: user.id}
        token = JWT.encode(payload, ENV["secret"], 'HS256')
        render json: {user:  user, token: token}
        # render json: user
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy_all
        render json: { success: "Your account has been deleted"}
    end


    private 
    def user_params
        params.permit(:username, :password)
    end
end
