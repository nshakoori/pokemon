class PokemonCardsController < ApplicationController
    before_action :set_pokemon_cards, only: [:index, :backups]

    def index
        if @pokemon_cards.length > 0
            flash[:notice] = nil
            redirect_to pokemon_cards_backups_path
        else
            render 'index'
        end
    end
    
    def backups
        card = pokemon_card_params[:card]
        if card 
            @pokemon_cards = PokemonCard.where('name = ? or hp = ? or rarity = ?', card, card, card)
        end
    end

    def create
        CreateBackupWorker.perform_now
        redirect_to pokemon_cards_backups_path, notice: 'Loading Images'
    end

    def delete_all
        PokemonCard.delete_all

        redirect_to root_path
    end

    private

    def set_pokemon_cards
      @pokemon_cards = PokemonCard.all
    end

    def pokemon_card_params
        params.permit(:card)
      end

end