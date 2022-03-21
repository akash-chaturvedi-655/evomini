# frozen_string_literal: true

class AdminsController < ApplicationController
  def index
    @admins = Admin.all
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def new
    @admin = Admin.new(admin_params)
  end

  def create
    @admin = Admin.new

    if @admin.save
      redirect_to @admin
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def update
    @admin = Admin.find(params[:id])

    if @admin.update(admin_params)
      redirect_to @admin
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @admin = Admin.find(params[:id])
    @admin.destroy

    redirect_to_root_path # status: :see_other
  end

  private

  def admin_params
    params.permit(:name, :email)
    #.require(:admin)
  end
end
