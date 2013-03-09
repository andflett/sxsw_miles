SxswMiles::Application.routes.draw do
 
  resources :attendees, :only => [:index]
  root :to => 'attendees#index'

end
