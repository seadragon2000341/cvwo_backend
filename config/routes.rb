Rails.application.routes.draw do
  namespace :api do
      get 'tasks/index'
      post 'tasks/create'
      patch '/update/:id', to: 'tasks#update'
      delete '/destroy/:id', to: 'tasks#destroy'
    end
  
  # root 'homepage#index'
  # get '/*path' => 'homepage#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
