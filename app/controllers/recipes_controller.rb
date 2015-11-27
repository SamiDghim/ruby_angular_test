class RecipesController < ApplicationController
  protect_from_forgery with: :exception
  protect_from_forgery except: :sign_in
respond_to :json

   def index
     if params[:search]
     #filter recipes by title and description sorted by date of publication.(call search method of Recipe model)
      respond_with Recipe.search(params[:search]).order(created_at: :desc)
     #return recipes for user
     elsif params[:user_id]
    respond_with Recipe.userRecipes(params[:user_id]).order(created_at: :desc)
      else
     #return all recipes sorted by date of publication.
      respond_with Recipe.order(created_at: :desc).all#.paginate(:page => params[:page], :per_page => 3)
     end
   end

  def show
    respond_with Recipe.find(params[:user_id])
  end

  def create
    respond_with Recipe.create(recipe_params)

  end

  def update
    respond_with Recipe.update(params[:id], params[:recipe])
  end
  private
  def recipe_params
    params.require(:recipe).permit(:title, :description,:image,:user_id)
  end

end
