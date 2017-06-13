Rails.application.routes.draw do

  root 'geneva_records#index'

  resources :geneva_records do

    resources :tanks, :meters, only: :create

  end



end
