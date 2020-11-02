Rails.application.routes.draw do
  resources :dogs, only:[:index, :show]
  resources :employees
  patch '/dogs', to: 'dogs#sort', as: 'sort'
end
