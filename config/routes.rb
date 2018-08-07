Rails.application.routes.draw do
  get 'mountians/index'
  scope '/api' do
    resources :mountians
  end
end
