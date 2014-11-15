Rails.application.routes.draw do

  get 'user/:user_id/action_id/:action_id' => 'commands#create'
  get 'user/:user_id/get_new' => 'commands#get_new'
  get 'test' => 'static_pages#test'
  root 'static_pages#index'

end
