class FavouritesController < ApplicationController
 before_action :find_animal

def create
if @current_user.present?
@animal.favourites.create(user_id: @current_user.id)
end
redirect_to animal_path(@animal)
end

 def find_animal
  @animal = Animal.find params[:animal_id]
 end



end
