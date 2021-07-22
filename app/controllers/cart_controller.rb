class CartController < ApplicationController
	@user = current_user
	@orders= @user.orders.paginate(page:params[:page], per_page:5)
end
