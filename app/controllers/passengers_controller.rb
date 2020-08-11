class PassengersController < ApplicationController

    before_action :find_passenger, only: [:show, :edit, :update, :destroy]

    def index
        @passengers = Passenger.all
    end

    def show 
    end 

    def new
        @passenger = Passenger.new
    end

    def create
        @passenger = Passenger.new(passenger_params)
        if @passenger.valid?
            @passenger.save
            redirect_to passenger_path(@passenger)
        else
            render :new
        end
    end 

    def edit
    end 

    def update
        @passenger.assign_attributes(passenger_params)
        if @passenger.valid?
            @passenger.save
            redirect_to passenger_path(@passenger)
        else
            render :edit
        end
    end

    def destroy
        Passenger.destroy(params[:id])
        redirect_to passengers_path
    end
    




    private

    def find_passenger
        @passenger = Passenger.find(params[:id])
    end

    def passenger_params
        params.require(:passenger).permit(:name, :address, :number_of_rides, :driver_ids => [])
    end
end
