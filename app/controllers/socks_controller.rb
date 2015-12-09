class SocksController < ApplicationController

def index
  @socks=Sock.all
end

def show
end

def update
end

def create
  @sock = Sock.new(sock_params)
  if @sock.save!
    flash[:notice]="New pair added! Nice!"
    redirect_to root_url
  else
    flash[:notice]="Hm. Something is missing. Try again."
    render new
  end
end

def new
  @sock = Sock.new
end

def destroy
end

private

def sock_params
  params.require(:sock).permit(:img_url, :style, :size, :material, :color, :price, :inventory)
end


end
