Rails.application.routes.draw do
  devise_for :users
  scope '/v1' do
    resources :mountians
    resource :sessions, only: [:create, :destroy]
  end
end
