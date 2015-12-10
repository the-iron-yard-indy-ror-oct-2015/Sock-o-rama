class CartsController < ApplicationController

  before_action :sock_setter

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


  def sock_setter
    @sock = Sock.new
  end

end
