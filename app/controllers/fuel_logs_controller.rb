class FuelLogsController < ApplicationController
    def new
        @fuel_log = FuelLog.new
        @car = Car.find(params[:id])
      end
    
      def create
        @fuel_log = FuelLog.new(user_params) 
        @car = Car.find(params[:id])
        @fuel_log.car_id = @car.id
        @fuel_log.user_id = current_user.id
        if @fuel_log.save
          flash[:success] = "Successfully added new fuel log!"
          redirect_to root_path
        else 
          flash[:danger] = "Failed to add fuel log"
          render :new
        end  
      end
    
      def index
        @fuel_logs= FuelLog.where(user_id: current_user.id)
        @cars = Car.where(user_id: current_user.id)
      end
    
      private
        def user_params
          params.require(:fuel_log).permit(:fueltype, :gasprice, :price, :mileage, :id, :user_id)
        end
end
