Rails.application.routes.draw do
  #devise_for :users
  scope '/api' do
    resources :mountians
    resources :sessions, only: [:create, :destroy]
  end
end
