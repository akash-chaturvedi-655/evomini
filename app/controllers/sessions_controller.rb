# frozen_string_literal: true

class SessionsController < ApplicationController
  protect_from_forgery with: :null_session

  def new; end

  def create
    respond_to do |format|
      user = User.find_by(email: params[:session][:username].downcase)
      if user&.authenticate(params[:session][:password])
        session[:user_id] = user.id
        # flash[:success] = "Logged in successfully"
        format.html { redirect_to pages_path, notice: 'Logged in successfully' }
        # redirect_to pages_path
      else
        # flash.now[:danger] = "There was something wrong with the login information"
        # render 'pages#home'
        # redirect_to root_path
        format.html { redirect_to root_path, notice: 'There was something wrong with the login information. Please check your user credentials or contact your administrator.' }
      end
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'You have successfully logged out'
    redirect_to root_path
  end
end
