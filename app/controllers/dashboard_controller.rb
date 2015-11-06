class DashboardController < ApplicationController

  def index
    render 'dashboard/index'
  end

  def user_status
    @user_status = UserStatus.new
    @user_status.user = current_user
    @user_status.status = params[:status]
    @user_status.save
  end

  def get_user
    @stats = UserStat.where(user_id: current_user.id)
    render "dashboard/current_user.json"
  end
end
