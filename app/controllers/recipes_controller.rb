class RecipesController < ApplicationController
  protect_from_forgery with: :exception
  protect_from_forgery except: :sign_in
respond_to :json

  def index
   #@recipes = #.paginate(page: params[:page], per_page: 2)

   # return all recipes sorted by date of publication.
   respond_with Recipe.order(created_at: :desc).all
  end


 
 # def index
   # respond_to do |format|
     # format.json do
      #  page = params[:page].present? ? params[:page] : 1
     #   @recipes = Recipe.all.paginate(:page => page, :per_page => 5)
    #    render :json => Paginator.pagination_attributes(@recipes).merge!(:recipes => @recipes)
   #   end
  #    format.html
 #   end
 # end

  def show
    respond_with Recipe.find(params[:id])
  end

  def create
    respond_with Recipe.create(params[:recipe])
  end

  def update
    respond_with Recipe.update(params[:id], params[:recipe])
  end
 

end
