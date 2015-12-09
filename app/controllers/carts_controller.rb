class CartsController < ApplicationController

  after_action :update_cart

  def index
    @cart = current_user.cart
    @items = @cart.items
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

  private

  def update_cart
    @cart.total = 0.0
    @cart.items.each do |i|
      @cart.total += i.sock.price * i.quantity
    end
  end

end
