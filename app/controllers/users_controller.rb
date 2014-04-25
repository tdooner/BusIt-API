class UsersController < ApplicationController
  def create
    render json: User.create(user_params)
  end

  private

  def user_params
    params.permit(:name, :email, :access_token, :recipient_id)
  end
end
