Hoboview::Application.routes.draw do
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  get 'auth/facebook', as: 'login_fb'
  get 'auth/google_oauth2', as: 'login_google'
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  resources :panoramas

  root 'panoramas#index'
end