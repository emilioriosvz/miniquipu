Rails.application.routes.draw do
<<<<<<< HEAD

  resources :invoices

  resources :articles

  root 'invoices#index'

=======
  get 'articles/index'

  get 'invoices/index'

  root 'invoices#index'

>>>>>>> cfb1231e04abc8ca899c7fb8b26a8998a54d5e82
end
