# frozen_string_literal: true

class LoginsController < ApplicationController
  
def login
  @login = Login.new(login_params)
  @user = User.find_by_email(@login.username)
  respond_to do |format|
    if @user && logged_in?
    #render "pages/menu" if logged_in?
    #format.html # { re ,notice: "User has successfully Logged In." }
    #redirect_to articles_path if logged_in?
    format.html { render "pages/menu", notice: "User has successfully Logged In." }
    flash[:notice] = "User has successfully Logged In."
    else
    format.html { redirect_to root_path, notice: "User not found" }
    flash[:danger] = "User Not Found."

  end
 end

 def new
  @login = Login.new
 end

def show
end

def destroy
end

end
  
end

private

def login_params
  params.permit(:username, :password)
#.require(:login)
end

