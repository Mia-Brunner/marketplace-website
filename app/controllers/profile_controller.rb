class ProfileController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_profile, only: [:show, :edit, :update, :destroy]
  before_action :authorise_user!, only: [:update, :edit, :destroy]
  

  def index
    @profiles = Profile.all
  end
  
  def show
  end
  
  def new
    @profile = Profile.new
  end
  
  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id

    if(@profile.save)
      redirect_to @profile
    else 
      render :new
    end 
  end 
  
  def edit

  end
  
  def update
    if(@profile.update(profile_params))
      redirect_to @profile
    else 
      render :edit
    end 
  end
  
  def destroy
    @profile.delete

    redirect_to listings_path
  end

  private

  def profile_params
    params.require(:profile).permit(:user, :name, :location, :contact, :description)
  end 

  def find_profile
    @profile = Profile.find(params[:id])
  end 

  def authorise_user!
    return true if current_user.id == @profile.user_id
  end
end