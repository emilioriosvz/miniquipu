Rails.application.routes.draw do

  resources :articles

  resources :invoices do
    resources :articles
  end

  get 'pdf', to: 'invoices#print', as: :print_pdf

  root 'invoices#index'

end
