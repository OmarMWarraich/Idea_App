Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  resources :comments
  get 'pages/info'
  root to: redirect('/ideas')
  
  resources :ideas

end
