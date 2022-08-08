class DogsController < ApplicationController

  def destroy
    dog = Dog.find_by(id: params[:id])
    if current_user.id == dog.user_id
      dog.destroy
      render json: {message: "dog destroyed"}
    else
      render json: {message: "that is not your dog to destroy"}
    end
  end



  
  def create
    if current_user
      dog = Dog.new
      dog.name = params[:name]
      dog.age = params[:age]
      dog.breed = params[:breed]
      dog.user_id = (current_user.id)
      dog.save
      render json: dog.as_json
    else
      render json: {message: "dog not created"}
    end
  end

end
