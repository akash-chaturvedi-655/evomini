# frozen_string_literal: true

class BulletinsController < ApplicationController
  
  before_action :require_user
  before_action :set_bulletin, only: %i[show edit update destroy]
  before_action :set_user_for_bulletin , only: %i[ create edit update ]
  before_action :require_same_user, only: %i[ edit update destroy]
  

  # GET /bulletins or /bulletins.json
  def index
      @bulletins = Bulletin.all
  end

  # GET /bulletins/1 or /bulletins/1.json
  def show; end

  # GET /bulletins/new
  def new
    @bulletin = Bulletin.new
    set_user_for_bulletin #@user = current_user
    puts("Here is the bulletin" , @bulletin.inspect)
    @userlists = @user.userlists#[:topic]
    puts("Here is the userlists" , @userlists.inspect)
  end

  # GET /bulletins/1/edit
  def edit; 
    @userlists = @user.userlists
  end

  # POST /bulletins or /bulletins.json
  def create
    @bulletin = Bulletin.new(bulletin_params) 
    @bulletin[:user_email] = @user[:email]
    #set_user_for_bulletin
    #puts @bulletin.inspect
    #set_user_for_bulletin #@user = current_user
    puts("Here is the bulletin" , @bulletin.inspect)
    @userlists = @user.userlists
    puts("Here is the userlists" , @userlists.inspect)

    respond_to do |format|
      if @bulletin.save
        format.html { redirect_to bulletin_url(@bulletin), notice: 'Bulletin was successfully sent.' }
        format.json { render :show, status: :created, location: @bulletin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bulletin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bulletins/1 or /bulletins/1.json
  def update
    respond_to do |format|
      if @bulletin.update(bulletin_params)
        puts "I am in the Bulletins#Update method"
         puts @bulletin.inspect
        format.html { redirect_to bulletin_url(@bulletin), notice: 'Bulletin was successfully updated.' }
        format.json { render :show, status: :ok, location: @bulletin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bulletin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bulletins/1 or /bulletins/1.json
  def destroy
    @bulletin.destroy

    respond_to do |format|
      format.html { redirect_to bulletins_url, notice: 'Bulletin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bulletin
    @bulletin = Bulletin.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def bulletin_params
    params.require(:bulletin).permit(:from, :to, :body, :flag, :topic)
  end

  def require_same_user
    if current_user[:email] != @bulletin[:user_email]
      flash[:danger] = "You can only edit or delete your own Bulletin"
      redirect_to bulletins_path, notice: "You can only edit or delete your own Bulletin"
    end
  end

  def set_user_for_bulletin
    
    @user = current_user
    # puts @user.inspect
    # puts @bulletin.inspect
    #@bulletin[:user_email] = @user[:email]   
  
  end

end
