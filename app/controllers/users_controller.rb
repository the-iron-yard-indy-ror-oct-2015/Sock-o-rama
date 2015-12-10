class UsersController < ApplicationController
before_filter :require_user, :only => [ :edit, :update]
 before_filter :set_user, only: [:edit, :update]

 def index
   @users=User.all
 end

 def new
   @user = User.new
 end

 def create
   @user = User.new(user_params)
   @user.cart = Cart.new
   @user.cart.update(name:"#{created_at.strftime("%Y%m%d%H%M%S")}#{SecureRandom.hex}")
   if @user.save
     respond_to do |format|
       format.html { redirect_to root_url, notice: 'User was successfully created.' }
       format.js { }
     end
   else
     respond_to do |format|
       format.html { render :new }
       format.js {render 'errors'}
     end
   end
 end

 def edit
   @user = @current_user
 end

 def update
 @user = @current_user # makes our views "cleaner" and more consistent
   respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to root_path, notice: 'User was successfully updated.' }

      else
        format.html { render :edit }
        format.json { render js: @user.errors, status: :unprocessable_entity }
      end
    end
 end


 private

  def set_user
    @user=User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email,:name, :password, :password_confirmation)
  end

end
