class PaymentMailer < ApplicationMailer

  def order_thank_you(email, product, order, total)
    @email = email
    @product = product
    @order = order
    @total = total
    @appname = "PhotoStock"

    mail( :to  => email,
          :from => 'noreply@sample-store-app-tsn.herokuapp.com',
          :subject => "Thank you! Order ##{order} | #{@appname}")
  end

end
