class CurrentUserController < ApplicationController
  def show
    if current_user
      render json: current_user
    else
      render json: {message: "Unauthorized"}, status: :unauthorized
    end
  end
end
