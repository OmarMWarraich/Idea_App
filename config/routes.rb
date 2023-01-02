Rails.application.routes.draw do
  devise_for :users
  resources :comments
  get 'pages/info'
  root to: redirect('/ideas')

  resources :ideas

end
