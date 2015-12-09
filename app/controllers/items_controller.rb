class ItemsController < ApplicationController

  def update
  end

  def create
    @item = Item.new(item_params)
    @item.save!
  end

  def new
    @item = Item.new

  end

  def destroy
    @item = Item.find(params['id'])
    @item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:sock_id, :cart_id, :quantity)
  end
end
