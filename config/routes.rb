Rails.application.routes.draw do
  devise_for :users
  resources :organizations do
    resources :boards
  end
  root 'welcome#index'
end
