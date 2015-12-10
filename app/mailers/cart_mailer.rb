class CartMailer < ApplicationMailer
  default from: 'donotreply@sockorama.com'

  def receipt_email(cart)
    @cart = cart
    mail(to: @cart.user.email, subject: 'Thanks for your Sock-o-Rama order!')
  end

end
