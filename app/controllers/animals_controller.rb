class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
  end

  def edit
  end

  def show
  end
end
