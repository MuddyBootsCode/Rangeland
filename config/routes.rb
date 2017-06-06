Rails.application.routes.draw do

  root 'geneva_records#index'

  resources :geneva_records

end
