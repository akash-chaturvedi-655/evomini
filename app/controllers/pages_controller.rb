# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    render layout: 'home'
  end

  def menu
    render 'menu' if logged_in?
  end
end
