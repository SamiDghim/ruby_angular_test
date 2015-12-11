require 'rails_helper'

describe IngredientController, :type => :controller do
    describe 'GET Ingredients'do
     
     it 'return all ingredients' do

       get :index, :format => :json

       expect(response.status).to eq 200
     end



    end



end
