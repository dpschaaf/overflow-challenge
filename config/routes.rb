DbcOverflow::Application.routes.draw do
  root :to => 'pages#home'

  resources :users do
    resources :comments
    resources :answers
  end

  resources :questions do
    resources :comments
    resources :answers
  end

  resource :sessions, only: [:new, :create, :destroy]

end
