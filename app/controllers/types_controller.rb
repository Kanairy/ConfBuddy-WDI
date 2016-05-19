class TypesController < ApplicationController
  def index
  end

  def create
    type = Type.new
    type.name = params[:name]
    type.save
  end

  def show
    @type = Type.find(params[:id])
  end

  def update
    type = Type.find(params[:id])
    type.name = params[:name]
    type.save
  end

  def destroy
    type = Type.find(params[:id])
    type.destroy
  end
end
