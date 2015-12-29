class HomesController < ApplicationController
	def index
		@shop = Shop.new
	end
	
	#Method to show form for register shops
	def create_shop
		respond_to do |format|
			format.js
		end
	end
	
	#Method to save form data to database
	def save_registered_shop
	 @shop = Shop.new(home_params)	
	 @shop.save	 
		if @shop.save
		  flash[:success] = "Shop Registered Successfully."
		else
			flash[:success] = "Unable to Register Shop."
		end
		render 'index'
	end
	
    #Method to show registered shops on map
	def display_shop
		respond_to do |format|
			format.js
		end
	end
	
 private

  def home_params
    params.require(:home).permit(:shopname, :address, :description, :image)
  end
	
end
