class DogsController < ApplicationController
  
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
