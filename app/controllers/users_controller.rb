class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])

  end

  def create
    user = User.new
    user.first_name = params[:first_name]
    user.last_name = params[:last_name]
    user.email = params[:email]
    user.password = params[:password]
    user.strength = params[:strength]
    user.seeking = params[:seeking]
    user.linkedin_url = params[:linkedin_url]
    if user.save
      session[:user_id] = user.id
      redirect_to "/"
    end
  end


end
