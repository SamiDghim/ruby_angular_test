class RecipesController < ApplicationController
  protect_from_forgery with: :exception
  protect_from_forgery except: :sign_in
respond_to :json

   def index
     if params[:search]
     #filter recipes by title and description sorted by date of publication.(call search method of Recipe model)
      respond_with Recipe.search(params[:search]).order(created_at: :desc)
     else
     #return all recipes sorted by date of publication.
      respond_with Recipe.order(created_at: :desc).all
     end
   end

  def show
    respond_with Recipe.find(params[:id])
  end

  def create
    respond_with Recipe.create(recipe_params)
  end

  def update
    respond_with Recipe.update(params[:id], params[:recipe])
  end
  private
  def recipe_params
    params.require(:recipe).permit(:title, :description, :rating, :photo, :user)
  end

end
