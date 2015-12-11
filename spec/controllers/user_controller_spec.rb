require 'rails_helper'

describe UserController, :type => :controller do
   
   describe 'GET users'do
     
     it 'return all users' do

       get :index, :format => :json

       expect(response.status).to eq 200
     end



    end


end
