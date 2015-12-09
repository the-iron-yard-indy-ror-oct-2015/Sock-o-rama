class ItemsController < ApplicationController

  def new
    @item = Item.new
    @sock = Sock.find(params['id'])
  end


  def create
    @item = Item.new(item_params)
    @item.cart = current_user.cart
    if @item.save
      flash[:notice]="The item was added to your cart! Nice!"
      redirect_to carts_path
    else
      flash[:notice]="Uh Oh, something went wrong."
      redirect_to new_item_path
    end
  end

  def edit
    @item = Item.find(params['id'])
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
  end

  private

  def item_params
    params.require(:item).permit(:sock_id, :quantity)
  end
end
