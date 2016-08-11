class RecipesController < ApplicationController
    before_action :find_recipe, only: [:show, :edit, :update, :destroy]
    def index
    end

    def show
    end

    def create
      @recipe = Recipe.new[recipe_params]

      if @recipe.save
          redirect_to @recipe, notice: "Successfully created new recipe"
      else
          render "new"
      end
    end

    def new
      @recipe = Recipe.new
    end


    def edit
      #code
    end


    def update
      #code
    end


    def destroy
      #code
    end

    private


    def recipe_params
      params.require(:recipe).permit(:title, :description)
    end

    def find_recipe
      @recipe = Recipe.find(param[:id])
    end


end
