class AuthController < ApplicationController

    def login
        user = User.find_by(email: user_params[:email])
        if user && user.authenticate(user_params[:password])
            payload = {user_id: user.id}
            token = JWT.encode(payload, ENV["secret"], 'HS256')
            render json: {user:  user, token: token}
        else
            render json: {errors:  user.errors.full_messages} 
        end
    end

    def persist
        if request.headers['Authorization'] 
            ## 'bearer idfhdskfhkjdshfjkdsfhdsjkfhenwfjwdhnfuwe'
            token = request.headers['Authorization'].split(' ')[1]
            # [{user_id: 1}, {algorithm: 'H256'}]
            user_id = JWT.decode(token, ENV["secret"], true, {algorithm: 'HS256'})[0]['user_id']
            user = User.find(user_id)
            render json: user
        end
    end

    private

    def user_params
        params.permit(:email, :password, :name, :profile_pic)
    end
end
