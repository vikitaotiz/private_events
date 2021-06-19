class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:sign_in]

  def show
    @created_events = current_user.events
    @upcoming_events = current_user.attendances.upcoming
    @past_events = current_user.attendances.past
  end
end
