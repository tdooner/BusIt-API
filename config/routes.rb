Busit::Application.routes.draw do
  resources :buses do
    resources :check_ins, only: [:index, :create]
  end

  resources :users, only: [:create]

  root 'application#home'
end
