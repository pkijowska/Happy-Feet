class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  
  end

  def new
    @animal = Animal.new
  end

def create
  animal = Animal.create animal_params
  if params[:file].present?
      # Then call Cloudinary's upload method, passing in the file in params
      req = Cloudinary::Uploader.upload(params[:file])
      # Using the public_id allows us to use Cloudinary's powerful image
      # transformation methods.
      animal.image = req["public_id"]
      animal.save
    end
  redirect_to animal
end

  def edit
      @animal = Animal.find params[:id]
  end

  def update
    animal = Animal.find parms[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      animal.image = req["public_id"]
    end
    animal.update animal_params
    animal.save
    redirect_to animal
end


  def show
      @animal = Animal.find params[:id]
  end


  def destroy
    animal = Animal.find params[:id]
    animal.destroy
    redirect_to animals_path
  end

  private
  def animal_params
    # Strong parameters: whitelist of sanitised input -- stuff we are happy to let the user provide us.
    params.require(:animal).permit(:name, :age, :story, :image)
  end

end
