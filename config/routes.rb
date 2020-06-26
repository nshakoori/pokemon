Rails.application.routes.draw do
    root to:'pokemon_cards#index'

    get 'pokemon_cards/backups', to: 'pokemon_cards#backups'
    post 'pokemon_cards/delete_all', to: 'pokemon_cards#delete_all'

    resources :pokemon_cards, only: [:index, :create]
end
