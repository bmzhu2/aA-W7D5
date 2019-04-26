class Api::SessionsController < ApplicationController

    def create
        @user = User.find_by_credentials(params[:user][:username], params[:user][:password])

        if @user 
            login!(@user)
            render json: @user
        else
            render json: { :errors => ["Invalid credentials"]}, :status => 403
        end
    end

    def destroy
        if current_user
            logout!
            render json: {}
        else
            render json: { :errors => ["Not logged in"]}, :status => 404
        end
    end
end
