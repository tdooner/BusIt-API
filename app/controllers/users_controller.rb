class UsersController < ApplicationController
  def create
    render json: User.create(
      email: params[:email],
      name: params[:name],
      access_token: params[:access_token],
    )
  end
end
