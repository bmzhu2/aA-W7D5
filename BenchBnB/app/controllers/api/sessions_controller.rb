class Api::SessionsController < ApplicationController

    def create
        @user = User.find_by_credentials(username: [user: username], password: [user: password])

        if @user 
            login!(@user)
            # do we render/redirect?
        else
            flash[:errors] = 'Invalid Credentials!'
            # remder json errors????
        end
    end

    def destroy
        logout!
    end
end
