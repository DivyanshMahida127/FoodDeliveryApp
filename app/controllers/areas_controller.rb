class AreasController < ApplicationController
    def index 
        #No need for this page!
    end 

    def show 
        @area = Area.find(params[:id])
        @restaurants = Restaurant.where(area_id: @area.id)
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
