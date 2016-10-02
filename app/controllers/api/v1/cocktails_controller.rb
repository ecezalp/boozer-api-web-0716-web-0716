module Api
  module V1
    class CocktailsController < ApplicationController
      def index
        render json: Cocktail.all
      end

      def show
        render json: Cocktail.find(params[:id])
      end

      def create
        new_cocktail = Cocktail.new(cocktail_params)
        if new_cocktail.save
          render json: new_cocktail
        end
      end

      def edit

      end

      def update

      end

      def destroy

      end

      private

      def cocktail_params
        params.require(:cocktail).permit(:name, :description, :instructions)
      end

    end
  end
end
