class UserProfilesController < ApplicationController
  before_action :require_login
  layout 'layouts/user_profile/application'
  def show
    @user = User.find(params[:id])
    @bookmark_events = @user.bookmark_events
    @future_events = @user.attend_events.future
    @past_events = @user.attend_events.past
  end
end
