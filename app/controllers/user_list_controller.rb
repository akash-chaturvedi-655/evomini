# frozen_string_literal: true

class UserListsController < ApplicationController
  
  def index; 
    @userlists = UserList.all
  end

  def create
    @userlist = userList.new(userlist_params)

    if @userlist.save
      redirect_to @userList
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @userlist = userList.find(params[:id])

    if @userlist.update(userlist_params)
      redirect_to @userlist
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def edit
    @userlist = userList.find(params[:id])
  end

  def destroy
    @userlist = userList.find(params[:id])
    @userlist.destroy
    params[:id] = nil
    flash[:notice] = "userlist has been deleted"
    #redirect_to :action => :index

    redirect_to root_path, status: :see_other
  end
end
