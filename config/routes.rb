Rails.application.routes.draw do

  resources :invoices

  get 'articles/index'

  root 'invoices#index'

end
