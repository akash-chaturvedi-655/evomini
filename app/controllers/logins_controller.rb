# frozen_string_literal: true

class LoginsController < ApplicationController
  
  def index
    @logins = Login.all
  end

  def login
    # render 'menu'
    @login = Login.find(params[:username])
   redirect_to root_path
  end

  def new
    @login = Login.new
  end

  def show; end

  def destroy; end

  def create
    @login = Login.new(login_params)

    if @login.save
      redirect_to @login
    else
      render :new, status: :unprocessable_entity
    end
end

  
end

private

def login_params
  params.require(:login).permit(:username, :password)
end

