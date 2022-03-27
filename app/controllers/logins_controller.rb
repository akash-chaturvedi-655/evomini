# frozen_string_literal: true

class LoginsController < ApplicationController
  
def login
  @login = Login.new(login_params)
  @user = User.find_by_email(@login.username)
  respond_to do |format|
    if @user
    format.html { render "pages/menu", notice: "User has successfully Logged In." }
    flash[:notice] = "User has successfully Logged In."
  #render "menu"
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

