Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :breeds, only: %i[index show]
  resources :horses, only: :show do
    collection do
      get :search
    end
  end

  root to: "breeds#index"
end
