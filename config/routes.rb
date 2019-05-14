Rails.application.routes.draw do

  root :to => 'welcome#index'
  
 
  scope "/admin" do
    resources :users
  end

  devise_for :users
  resources :tasks
  resources :roles
  resources :works
  get 'material',to:"tasks#material"
  authenticated :user do
    root :to => 'tasks#index', as: :authenticated_root
  end

end