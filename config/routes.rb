Rails.application.routes.draw do
  root to: redirect('/ideas')

  resources :ideas

end
