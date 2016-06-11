Rails.application.routes.draw do
  # get 'general/index'

  root 'general#index'

  get 'contatos', to: 'general#contact'
  get 'sobre-nos', to: 'general#about'
  post 'messages', to: 'general#messages'
end
