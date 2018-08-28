Rails.application.routes.draw do
  devise_for :users
  scope '/v1', defaults: { format: :json } do
    resources :mountians
    resource :sessions, only: [:create, :destroy]
    resources :users, only: [:create, :show, :update]
    resources :plans, only: [:index, :create, :destroy]
    resources :bins
    resources :entrys
  end
end
