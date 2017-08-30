# Preview all emails at http://localhost:3000/rails/mailers/payment_mailer
class PaymentMailerPreview < ActionMailer::Preview
  def order_thank_you
    PaymentMailer.order_thank_you("example@example.com", "Sample Product", "95", "88.25")
  end
end
