Rails.application.routes.draw do
  # get 'general/index'

  root 'general#index'

  get 'contatos', to: 'general#contact'
  get 'sobre-nos', to: 'general#about'
  post 'contatos', to: 'general#create', as: :messages
end
