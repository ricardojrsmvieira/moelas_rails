class DrinksController < ApplicationController

    def index
        @drinks = Drink.all
    end

    def show
        @drink = Drink.find(params[:id])
    end

    def new
        @drink = Drink.new
    end

    def create
        @drink = Drink.new(drink_params)
        if @drink.save
            redirect_to drink_path(@drink)
        else
            render :new
        end
    end

    def destroy
        @drink = Drink.find(params[:id])
        @drink.destroy
        redirect_to drinks_path, notice => "Drink has been deleted"
    end

    def update
        @drink = Drink.find(params[:id])
        if @drink.update_Attributes(drink_params)
            redirect_to drink_path(@drink)
        end
    end

    private

    def drink_params
        params.require(:drink).permit(:name, :quantity)
    end

end
