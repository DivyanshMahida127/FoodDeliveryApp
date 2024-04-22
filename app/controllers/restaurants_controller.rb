class RestaurantsController < ApplicationController
    def index 
        #No need for this!
    end 

    def show 
        @restaurant = Restaurant.includes(:food_items, :categories).find(params[:id])
        @food_items = @restaurant.food_items
        @categories = @restaurant.categories.distinct
    end 

    def new 
    end 

    def create 
    end 

    def edit 
    end 

    def update 
    end 

    def destroy 
    end 
end
