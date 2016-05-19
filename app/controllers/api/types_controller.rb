module Api
  class TypesController < ApplicationController
    def index
      types = Type.all
      render json: types.to_json, status: 201
    end

    def create
      type = Type.new
      type.name = params[:name]
      type.save
      render json: types.to_json, status: 201

    end

    def show
      @type = Type.find(params[:id])
      render json: types.to_json, status: 201

    end

    def update
      type = Type.find(params[:id])
      type.name = params[:name]
      type.save
      render json: types.to_json, status: 201

    end

  end
end
