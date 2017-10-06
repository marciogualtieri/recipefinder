Rails.application.routes.draw do
  get 'about/about'

  get 'recipes_controller/index'
  root 'recipes_controller#index' 
end
