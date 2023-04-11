Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "application#index"

  get 'application/index', as: 'home'


  # GET /drinks     => drinks controller's index action
  get 'drinks', to: 'drinks#index', as: 'drinks'

  # GET /drinks/:id => drinks controller's show action
  get 'drinks/:id', to: 'drinks#show', as: 'drink', id: /\d+/

  # GET /drinks/new => drinks controller's new action
  get 'drinks/new', to: 'drinks#new', as: 'new_drink'

  # POST /drinks    => drinks controller's create action
  post 'drinks', to: 'drinks#create'

  # DELETE /drinks/:id => drinks controller's delete action
  delete 'drinks/:id', to: 'drinks#destroy', as: 'delete_drink'

  


  #####################


  # GET /cocktails     => cocktails controller's index action
  get 'cocktails', to: 'cocktails#index', as: 'cocktails'

  # GET /cocktails/:id => cocktails controller's show action
  get 'cocktails/:id', to: 'cocktails#show', as: 'cocktail', id: /\d+/


  # GET /cocktails/:id/drinks => cocktails controller's show drinks action
  get 'cocktails/:id/drinks', to: 'cocktails#showdrinks', as: 'cocktail_drinks', id: /\d+/

  

  # GET /cocktails/new => cocktails controller's new action
  get 'cocktails/new', to: 'cocktails#new', as: 'new_cocktail'

  # POST /cocktails    => cocktails controller's create action
  post 'cocktails', to: 'cocktails#create', as: 'create_cocktail'

  # DELETE /cocktails/:id => cocktails controller's delete action
  delete 'cocktails/:id', to: 'cocktails#destroy', as: 'delete_cocktail'






  #####################
    # GET /drinks_cocktails/new => cocktails controller's new action
    get 'drinks_cocktails/new', to: 'drinks_cocktails#new', as: 'new_drinks_cocktail'

end
