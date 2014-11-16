Rails.application.routes.draw do

  get 'user/:user_id/command_id/:command_id' => 'commands#create'
  get 'user/:user_id/get_new' => 'commands#get_new'
  get 'gold' => 'static_pages#gold'
  root 'static_pages#index'

end
