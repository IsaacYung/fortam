Rails.application.routes.draw do
  # get 'general/index'

  root 'general#index'

  get 'contato', to: 'general#contact', as: :contact
  get 'sobre-nos', to: 'general#about', as: :about
  get 'trabalhe-conosco', to: 'general#work', as: :work_us
  post 'contatos', to: 'general#create', as: :messages
  post 'trabalhe-conosco', to: 'general#work_create', as: :works
end
