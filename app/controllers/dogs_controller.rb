class DogsController < ApplicationController
  belongs_to :user
  def create
    if current_user
      dog = Dog.new
      dog.name = params[:name]
      dog.age = params[:age]
      dog.breed = params[:breed]
      dog.save
      render json: dog.as_json
    else
      render json: {message: "dog not created"}
    end
  end
end
