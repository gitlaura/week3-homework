Rails.application.routes.draw do

  root 'places#index'
  get '/places' => 'places#index'
  
  get '/places/new' => 'places#new'
  get '/places/submit_new' => 'places#create'

  get '/places/:id/edit' => 'places#edit'
  get '/places/:id/update' => 'places#update'
  get '/places/:id/delete' => 'places#delete'
  get '/places/:id' => 'places#show'

end
