if Rails.env.production?
  Rails.configuration.stripe = {
      :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
      :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
      :publishable_key => 'pk_test_mkqbOEyumbssRL0O0LwMU3pV',
      :secret_key => 'sk_test_j4isdqmrWAtcaG7g5B2UqalH'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]