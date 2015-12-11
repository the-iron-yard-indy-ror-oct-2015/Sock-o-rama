# Preview all emails at http://localhost:3000/rails/mailers/cart_mailer
class CartMailerPreview < ActionMailer::Preview

  def send
    CartMailer.receipt_email(Cart.find(2))
  end

end
