Rails.application.routes.draw do
  get 'counter/index'

  root 'counter#index'

  post 'counter/poster'

  get 'counter/poster'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
