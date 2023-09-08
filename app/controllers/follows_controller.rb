class FollowsController < ApplicationController
  before_action :require_login

  def create
    user = User.find(params[:user_profile_id])
    current_user.follow(user)
    redirect_to user_profile_path(user)
  end

  def destroy
    user = User.find(params[:user_profile_id])
    current_user.unfollow(user)
    redirect_to user_profile_path(user)
  end
end
