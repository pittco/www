Rails.application.routes.draw do
  root 'home#index'

  get '/admin' => 'admin_home#index'
  namespace :admin do
    resources :seating_charts
  end

  get '/my' => 'user_home#index'
  namespace :my do
    resources :seats
  end

  post '/logout' => 'auth#logout'
  get '/login' => 'auth#login'
  get '/auth/google_oauth2/callback' => 'auth#oauth2_callback'
end
