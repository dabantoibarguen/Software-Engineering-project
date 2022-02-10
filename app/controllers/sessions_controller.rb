class SessionsController < ApplicationController
    def destroy
        session.clear
        redirect_to login_path
    end
end
