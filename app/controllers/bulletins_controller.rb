# frozen_string_literal: true

class BulletinsController < ApplicationController
  def index;
    @bulletins = Bulletin.all
  end

  def show
    @subs_bulletin = Bulletin.find(params[:subscriber_id])
    if(@subs_bulletin)
       redirect_to @subs_bulletin
    else
      render :new, status: :unprocessable_entity
    end
  end

  def create
    @bulletin = Bulletin.new(bulletin_params)

    if @bulletin.save
      redirect_to @bulletin
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @bulletin = Bulletin.find(params[:id])

    if @bulletin.update(bulletin_params)
      redirect_to @bulletin
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def edit
    @bulletin = Bulletin.find(params[:id])
  end

  def destroy
    @bulletin = Bulletin.find(params[:id])
    @bulletin.destroy
    params[:id] = nil
    flash[:notice] = "bulletin has been deleted"
    #redirect_to :action => :index

    redirect_to root_path, status: :see_other
  end
end
