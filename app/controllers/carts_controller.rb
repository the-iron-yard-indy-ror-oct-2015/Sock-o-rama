class CartsController < ApplicationController

  def index
    @items = Itme.all
  end

  def create
    session['cart_id'] = SecureRandom.hex.to_s+created_at.strftime("%Y%m%d%H%M%S")
    @cart = Cart.new()
    if current_user_session
      @cart.user = current_user
    else
      @cart.user = session['cart_id']
    end
    @cart.save
  end

  def destroy

  end



end
