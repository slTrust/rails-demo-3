class UsersController < ApplicationController
  def create
    render_resources User.create create_params
  end

  def me
    render_resources current_user
  end

  def create_params
    params.permit(:email,:password,:password_confirmation)
  end
end
