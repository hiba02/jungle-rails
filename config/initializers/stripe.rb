Rails.configuration.stripe = {
  :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
  :secret_key      => ENV['STRIPE_SECRET_KEY'],
  :user_id         => ENV['USER_ID'],
  :password         => ENV['PASSWORD']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
