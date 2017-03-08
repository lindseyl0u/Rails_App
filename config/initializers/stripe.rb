if Rails.env.production?
  Rails.configuration.stripe = {
  	:publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
  	:secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
  	:publishable_key => 'pk_test_zTkPJjdgpCoMUZUs7auA9mH8',
  	:secret_key => 'sk_test_OP54fio1wR4yxvDb1VetKbnb'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]