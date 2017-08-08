class DashboardController < ApplicationController


  def index
    @cities = current_user.cities
  end
end
