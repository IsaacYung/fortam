Rails.application.routes.draw do
  # get 'general/index'

  root 'general#index'

  get 'contatos', to: 'general#contact'
end
