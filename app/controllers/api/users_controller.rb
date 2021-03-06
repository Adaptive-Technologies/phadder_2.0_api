class Api::UsersController < ApplicationController
  before_action :authenticate_api_user!
  def show
    user = User.find(params[:id])
    render json: user, serializer: Users::ShowSerializer
  end
end
