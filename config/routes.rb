Rails.application.routes.draw do

  root 'genevarecords#index'

  resources :genevarecords

end
