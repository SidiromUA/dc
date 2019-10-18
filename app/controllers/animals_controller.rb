class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    #@animal.avatar.attach(params[:avatar])
    if @animal.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy

    redirect_to animals_path
  end

  private

  def animal_params
    params.require(:animal).permit(:title, :kind, :avatar)
  end
end
