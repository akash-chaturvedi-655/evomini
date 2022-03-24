class LoginController < ApplicationController
    def login
        render "menu"
    end

    def index
        render "menu"
    end

    def create
        @login = Login.new
        redirect_to root_path
    end
end
