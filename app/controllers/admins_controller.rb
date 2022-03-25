# frozen_string_literal: true

class AdminsController < ApplicationController
  def index
    @admins = Admin.all
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)

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
    params[:id] = nil
    flash[:notice] = 'Admin has been deleted'
    # redirect_to :action => :index

    redirect_to root_path, status: :see_other
  end

  private

  def admin_params
    params.require(:admin).permit(:name, :email)
    #
  end
end
