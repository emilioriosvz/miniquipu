Rails.application.routes.draw do

  resources :invoices

  resources :articles

  root 'invoices#index'

end
