class CartsController < ApplicationController

  def index
    @items = Item.all
  end

  def create
    session['cart_id'] = created_at.strftime("%Y%m%d%H%M%S") + SecureRandom.hex
    @cart = Cart.new()
    if current_user_session
      @cart.user = current_user
    else
      @cart.user = session['cart_id']
    end
    @cart.save
  end

  def destroy
    @cart = Cart.find(params['id'])
    @cart.destroy

  end



end
