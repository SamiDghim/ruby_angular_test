require 'rails_helper'

describe RecipesController, :type => :controller do
  
  let!(:recipe_built) { build(:recipe) } # saved in memory only
  let!(:recipe_created) { create(:recipe) } # saved in db
  #let(:valid_attributes) { attributes_for(:recipe) }
  #let(:invalid_attributes) {  }
 
   before :each do
    # ensure an user is logged in
    #login_user create(:user)
    request.env["HTTP_ACCEPT"] = "application/json"
  end

  # index
  # ---------------------------------------------
  describe "GET #index" do
 
    it "assigns all recipes as @recipes" do
      get :index, format: 'json'
      expect(assigns(:recipes)).to match_array([recipe_created])
    end
       
  end
  
  # create
  # ---------------------------------------------
  describe "POST #create" do

  end
 
  # update
  # --------------------------------------------- 
  describe "PUT /recipes/:id"  do

  end
end
