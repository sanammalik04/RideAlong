class RidesController < ApplicationController
    
    before_action :find_ride, only: [:show, :edit, :update]
    def show   
    end
    
    def new
        @ride = Ride.new
    end

    def create
        @ride = Ride.new(strong_params)
        if @ride.valid?
            @ride.save
            redirect_to ride_path(@ride)
        else
            render :new
        end
    end

    def edit
    end

    def update
        @ride = Ride.assign_attributes(strong_params)
        if @ride.valid?
            @ride.save
            redirect_to ride_path(@ride)
        else
            render :edit
        end
    end


    private
    def strong_params
        params.require(:ride).permit(:driver_id, :passenger_id)
    end

    def find_ride
        @ride = Ride.find(params[:id])
    end

end
