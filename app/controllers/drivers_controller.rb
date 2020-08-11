class DriversController < ApplicationController

    def index
        @drivers = Driver.all 
    end

    def show
        @driver = Driver.find(params[:id])
    end

    def new
        @driver = Driver.new
    end

    def create
        @driver = Driver.new(driver_params)
        if @driver.valid?
            @driver.save
            redirect_to driver_path(@driver)
        else
            render :new
        end
    end

    def edit
        @driver = Driver.find(params[:id])
    end 

    def update
        @driver = Driver.find(params[:id])
        @driver.assign_attributes(driver_params)
        if @driver.valid?
            @driver.save
            redirect_to driver_path(@driver)
        else
            render :edit
        end
    end

    def destroy
        @driver = Driver.find(params[:id])
        Driver.destroy(params[:id])
        redirect_to drivers_path
    end

    


    private

    def driver_params
        params.require(:driver).permit(:name, :car_make, :car_model, :passenger_ids => [])
    end

end
