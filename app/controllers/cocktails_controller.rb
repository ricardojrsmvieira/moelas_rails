class CocktailsController < ApplicationController

    def index
        @cocktails = Cocktail.all
    end

    def show
        @cocktail = Cocktail.find(params[:id])
        @drinks = @cocktail.drinks
        @helper = DrinksCocktail.where cocktail_id: @cocktail.id
        @info = {}
        @drinks.each do |drink|
            aux = @helper.where drink_id: drink.id
            quant = aux.pluck :quantity
            @info[drink.name] = quant
        end
    end

    def new
        @cocktail = Cocktail.new
        @cocktail.drinks_cocktails.build
    end

    def create
        @cocktail = Cocktail.new(cocktail_params)
        if @cocktail.save
            redirect_to cocktail_path(@cocktail)
        else
            render :new
        end
    end

    def destroy
        @cocktail = Cocktail.find(params[:id])
        @cocktail.destroy
        redirect_to cocktails_path, notice => "cocktail has been deleted"
    end

    def update
        @cocktail = Cocktail.find(params[:id])
        if @cocktail.update_Attributes(cocktail_params)
            redirect_to cocktail_path(@cocktail)
        end
    end

    private
        def cocktail_params
            params.require(:cocktail).permit(:name, drinks_cocktails_attributes: DrinksCocktail.attribute_names.map(&:to_sym).push(:_destroy))
        end

        def set_cocktail
            @cocktail = Cocktail.find(params[:id])
        end
end
