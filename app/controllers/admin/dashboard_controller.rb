class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN'] , password: ENV['PW']

  def show
  end

end
