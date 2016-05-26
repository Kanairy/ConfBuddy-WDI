module Api
  class UsersController < ApplicationController

    def index
      @users = User.all
      render json: @users.to_json, status: 201
    end

    def show
      user = User.find(params[:id])
      render json: user.to_json, status: 200
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
        render json: user.to_json, status: 201
      else
        render json: user.errors.to_json
      end
    end

    def login
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        render json: user.to_json, status: 200
      else
        render json: user.errors.to_json
      end
    end

  end
end
