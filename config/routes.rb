Rails.application.routes.draw do

  resources :articles

  resources :invoices do
    resources :articles
  end

  get 'pdf', to: 'invoices#print', as: :print_pdf

  get 'dashboard', to: 'dashboards#index'

  root 'invoices#index'

end
