Rails.application.routes.draw do

resources :departments do
  resources :items

post '/items/random_items', 'items#random_items' 

end

post '/departments/random_departments', 'departments#random_departments'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
