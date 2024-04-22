class StatesController < ApplicationController
    def index 
        @states = State.all
    end 

    def show 
        @state = State.find(params[:id])
        @cities = @state.cities
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
