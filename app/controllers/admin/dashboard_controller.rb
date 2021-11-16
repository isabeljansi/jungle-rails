class Admin::DashboardController < ApplicationController

  before_filter :authorize

  http_basic_authenticate_with name: ENV["HTTP_BASIC_USER"],
  password: ENV["HTTP_BASIC_PASSWORD"]

  def show
    
    @count_products = Product.count
    @count_categories = Category.count
    
  end

end
