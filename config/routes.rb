Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#home'

  get 'park' => 'park#park'
  get 'park/new' => 'park#newpark'

  post 'park' => 'park#addnewpark'
  get 'park/:id' => 'park#chosenpark'
end
