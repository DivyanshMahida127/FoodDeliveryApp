class CitiesController < ApplicationController
    def index 
        #No need for this page
    end  

    def show 
        @city = City.find(params[:id])

        @restaurants = Restaurant.find_by(city_id: @city.id)
        @areas = Area.where(city_id: @city.id )
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
