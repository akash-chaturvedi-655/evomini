# frozen_string_literal: true

class PagesController < ApplicationController
  
  def home 
    render :layout => "home"
  end

  def menu
    #redirect_to pages_path if logged_in?
  end
end