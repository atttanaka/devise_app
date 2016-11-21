Rails.application.routes.draw do
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }

  authenticated :user do
    root :to => "pages#show", :as => "user_authenticated_root"
  end

  root 'pages#index'
  get 'pages/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
