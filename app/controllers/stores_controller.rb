class StoresController < ApplicationController
    def index
        @stores = Store.all
    end
    
    def show
        @store = Store.find(params[:id])
        @appointment = Appointment.new
    end
end
