Rails.application.routes.draw do
  get 'articles/index'

  get 'invoices/index'

  root 'invoices#index'

end
