class CartsController < ApplicationController

  before_action :sock_setter

  def index
    if current_user_session
      @cart = current_user.cart
    elsif session['cart_id']
      @cart = Cart.find(session['cart_id'])
    else
      @cart = Cart.new
      @cart.name = "#{Time.now.strftime("%Y%m%d%H%M%S")}#{SecureRandom.hex}"
      @cart.save!
      session['cart_id'] = @cart.id
    end
    @items = @cart.items
  end

  def new
    convert_cart_to_order
    @cart = Cart.new
    @cart.name = "#{Time.now.strftime("%Y%m%d%H%M%S")}#{SecureRandom.hex}"
    @cart.save!
    if current_user_session
      current_user.cart = @cart
    end
    session['cart_id'] = @cart.id
    @items = @cart.items
    render 'index'
  end

  def show
    @cart = Cart.friendly.find(params[:id])
    @items = @cart.items
    render 'index'
  end

  def previous_orders
    if current_user_session
      @orders = Cart.where('perm_user='+current_user.id.to_s)
    else
      @orders = []
    end
  end

  def create
    @cart = Cart.new()
    @cart.name = "#{Time.now.strftime("%Y%m%d%H%M%S")}#{SecureRandom.hex}"
    if current_user_session
      @cart.user = current_user
    end
    @cart.save!
  end

  def destroy
    @cart = Cart.find(params['id'])
    @cart.destroy
    #CartMailer.receipt_email(cart).deliver_now
  end

  private

  def convert_cart_to_order
    # we need to create a new class called orders with the same attributes as cart.  User should have many orders.
    if current_user_session
      @cart = current_user.cart
      @cart.perm_user = current_user.id
      @cart.save!
    end
    price = 0
    @cart.items.each do |i|
      price = price + (i.sock.price*i.quantity)
      i.sock.inventory = i.sock.inventory - i.quantity
    end
    price = price*100
    @cart.update(price: price)
  end

  def sock_setter
    @sock = Sock.new
  end

end
