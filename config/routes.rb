Rails.application.routes.draw do

  resources :articles

  resources :invoices do
    resources :articles
  end

  root 'invoices#index'

end
