class IncreamentLikesController < ApplicationController
  def increament_likes
    bird = Bird.find_by(id: params[:id])
    if bird
      bird.update(likes: bird.likes + 1)
      render json: bird
    else
      render json: { error: "Bird not found" }, status: 404
    end
  end
end
