Rails.application.routes.draw do

  get 'user/:user_id/command_id/:command_id' => 'commands#create'
  get 'user/:user_id/get_new' => 'commands#get_new'
  get 'mad_libs' => 'static_pages#mad_libs'
  root 'static_pages#index'

end
