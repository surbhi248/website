class ProductsController < ApplicationController
  def index
    @product = Product.paginate(page: params[:page],per_page:5)
  end

  def show
    @user = current_user
    @product =Product.find(params[:id])
  end
end



