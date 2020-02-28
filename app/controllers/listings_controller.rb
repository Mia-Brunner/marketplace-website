class ListingsController < ApplicationController

  before_action :find_listing, only: [:show, :edit, :update, :destroy]


  def index
    @listings = Listing.all
  end
  
  def show
  end
  
  def new
    @listing = Listing.new
  end
  
  def create
    @listing = listing.new(listing_params)
    if(@listing.save)
      redirect_to @listing
    else 
      render :new
    end 
  end 
  
  def edit
    
  end
  
  def update
  end
  
  def destroy
  end

  private

  def listing_params
    params.require(:lisitng).permit(:name, :breed, :price, :documentation, :description)
  end 

  def find_listing
    @listing = Listing.find(params[:id])
  end 
end
