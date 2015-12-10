class ItemsController < ApplicationController

  def new
    @item = Item.new
    @sock = Sock.find(params['id'])
  end


  def create
    @item = Item.new(item_params)
    @item.cart = current_user.cart
    if @item.save
      update_cart
      flash[:notice]="The item was added to your cart! Nice!"
      redirect_to carts_path
    else
      flash[:notice]="Uh Oh, something went wrong."
      redirect_to new_item_path
    end
  end

  def edit
    @item = Item.find(params['id'])
    @sock= @item.sock
    render 'new'
  end

  def update
    @item = Item.find(params['id'])
    if @item.update(item_params)
      flash[:notice]="The item was added to your cart! Nice!"
      redirect_to carts_path
    else
      flash[:notice]="Uh Oh, something went wrong."
      redirect_to new_item_path
    end
  end

  def destroy
    @item = Item.find(params['id'])
    @item.destroy
    redirect_to carts_path
  end

  private

  def item_params
    params.require(:item).permit(:sock_id, :quantity)
  end

  def update_cart
    cart = Cart.find(@item.cart.id)
    total = 0
    cart.items.each do |i|
      total = total + (i.sock.price*i.quantity)
    end
    cart.update(total: total)
  end
end
