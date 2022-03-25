# frozen_string_literal: true

class SubscribersController < ApplicationController
  def index
    @subscribers = Subscriber.all
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)

    if @subscriber.save
      redirect_to @subscriber
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @subscriber = Subscriber.find(params[:id])

    if @subscriber.update(subscriber_params)
      redirect_to @subscriber
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def edit
    @subscriber = Subscriber.find(params[:id])
  end

  def destroy
    @subscriber = Subscriber.find(params[:id])
    @subscriber.destroy
    params[:id] = nil
    flash[:notice] = 'Subscriber has been deleted'
    # redirect_to :action => :index

    redirect_to root_path, status: :see_other
  end
end
