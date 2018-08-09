Rails.application.routes.draw do
  devise_for :users
  scope '/v1', defaults: { format: :json } do
    resources :mountians
    resource :sessions, only: [:create, :destroy]
  end
end
