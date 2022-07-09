class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN'] , password: ENV['PW']

  def show
    @products = Product.all
    @categories = Category.all
  end

end
