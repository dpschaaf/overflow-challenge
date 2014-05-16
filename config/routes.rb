DbcOverflow::Application.routes.draw do
  root :to => 'pages#home'

  resources :users
  resources :questions
  resource :sessions, only: [:new, :create, :destroy]

end
