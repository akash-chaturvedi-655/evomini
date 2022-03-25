# frozen_string_literal: true

class PagesController < ApplicationController
  def home; end

  def new
    @login = Login.new(login_params)
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

  def index
    render 'admins/index.html.erb'
  end
end

private

def login_params
  params.require(:login).permit(:username, :password)
end
