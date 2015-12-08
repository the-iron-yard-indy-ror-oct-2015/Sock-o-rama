class SocksController < ApplicationController

def index
  @socks=Sock.all
  @sock = Sock.find(params[:id])
end

def show
end

def update
end

def create
end

def new
end

def destroy
end


end
