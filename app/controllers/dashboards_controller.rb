class DashboardsController < ApplicationController
  before_action :set_user, only: [:index]

  def index

    @matches = @user.matches



  end








  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(session[:user_id])
    end

end
