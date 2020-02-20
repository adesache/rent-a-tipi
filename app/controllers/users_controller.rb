class UsersController < ApplicationController
  def dashboard
    @user = current_user
    @bookings = policy_scope(Booking)
    @tents = policy_scope(Tent)
    authorize @user
  end
end
