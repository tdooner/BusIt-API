Busit::Application.routes.draw do
  resources :buses

  root 'application#home'
end
