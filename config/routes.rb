Rails.application.routes.draw do
  resources :lotteries
  root to: 'lotteries#index'
end
