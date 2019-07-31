class FavouritesController < ApplicationController
 before_action :find_animal
 before_action :find_favourite, only: [:destroy]

def create
  if @current_user.present?
    if already_favourite?
      flash[:notice] = "You add it to your favourite more than once"
    else
      @animal.favourites.create(user_id: @current_user.id)
    end
    redirect_to animal_path(@animal)
  else
    redirect_to login_path
  end

end



def destroy
  if !(already_favourite?)
  flash[:notice] = "You can't unfavourite if it is not your favourite"
  else
  @favourite.destroy_all
  end
  redirect_to animal_path(@animal)
end

def already_favourite?
@favourite = Favourite.where(user_id: @current_user.id, animal_id: params[:animal_id])
@favourite
end


def find_favourite
@favourite = @animal.favourites.find params[:id]

end


 def find_animal
  @animal = Animal.find params[:animal_id]
 end



end
