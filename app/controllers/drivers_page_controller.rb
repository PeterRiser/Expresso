class DriversPageController < ApplicationController
    def index
        @orders = Order.all
    end
    
    def accept
       @orders = Order.all
    end
    
    def acceptOrders
        puts "PRINTING CHECKED VALUES:"
        puts params[:selectedOrders]
        #Take checked values and set the orders in order table with id = value so that
        # the order's acceptedByID = Rails.application.config.currUserID
        redirect_to '/drivers/accept'
    end
end
