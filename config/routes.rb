Busit::Application.routes.draw do
  resources :buses do
    resources :check_ins, only: [:index, :create]
  end

  root 'application#home'
end
