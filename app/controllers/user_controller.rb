class UserController < ApplicationController
  protect_from_forgery with: :exception
  protect_from_forgery except: :sign_in
  respond_to :json

  def index
      respond_with User.order(created_at: :desc).all
  end

  def show
    respond_with User.find(params[:user_id])
  end


end
