class RecipesController < ApplicationController

  before_action :get_recipe , only: [:update,:show,:destroy]

  #only authenticated users can create or update recipe
  before_filter :authenticate_user!, only: [:create, :update]

  protect_from_forgery with: :exception
  protect_from_forgery except: :sign_in
  respond_to :json

   def index
     if search = params[:search]
     #filter recipes by title and description sorted by date of publication.(call search method of Recipe model)
      respond_with Recipe.search(search).order(created_at: :desc).paginate(:page => params[:page], :per_page => 3)
       #return recipes for logged user
     elsif user_signed_in?
       @userRecipes = User.find(current_user.id).recipes.order(created_at: :desc).all.paginate(:page => params[:page], :per_page => 3) 
       respond_with(@userRecipes, status: 200)
     else
       #return all recipes sorted by date of publication.
       @recipes = Recipe.order(created_at: :desc).all.paginate(:page => params[:page], :per_page => 3)  

       respond_with(@recipes, status: 200)
     end
   end

  def show
    respond_with @recipe
  end
  # POST /recipes.json
  def create
    @rec = Recipe.new(recipe_params.merge(user_id: current_user.id))
    @rec.save

    respond_with(@rec, status: 200)
  end
  # PATCH/PUT /recipes/1.json
  def update
   if params[:id]
   #if false --> true else --> false 
     @recipe.toggle!(:isfavorite)# ! : to save in db 
     respond_with(@recipe, status: 200)
   else
    respond_with Recipe.update(@recipe)
    end
    #, params[:recipe]
  end

  def destroy
    @recipe.destroy
    respond_with(@recipe,status: 200)
  end
  private
  def get_recipe
    @recipe = Recipe.find(params[:id]) or not_found
  end
  private
  def recipe_params
    params.require(:recipe).permit(:title, :description,:rating,:image,ingredients: [:name,:id] )
  end
end