class OrdersController < ApplicationController
  def create
    @user =current_user
    @product = Product.find(params[:product_id])
    @order = @product.orders.create(order_params)
    @quantity =(@product.quantity)-1
    @product_update = @product.update(quantity: @quantity)
    flash[:notice] = "order placed successfully"
    redirect_to cart_path

  end

    def order_params
      params.require(:order).permit(:quantity, :product_id, :user_id)
    end
    def index
    end
end
