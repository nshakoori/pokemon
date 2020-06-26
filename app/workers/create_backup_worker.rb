
require "sidekiq"
class CreateBackupWorker < ApplicationJob
    sidekiq_options retry: false
  
    def perform
      response = HTTParty.get('https://api.pokemontcg.io/v1/cards?setCode=base4')
      cards = response.parsed_response["cards"].pluck("name", "hp", "rarity").map{ |hp, name, rarity| { hp: hp, name: name, rarity: rarity } }
      pokemon_cards = cards.map do |c|
        PokemonCard.create(name: c[:name], hp: c[:hp], rarity: c[:rarity])
      end
    end
  end
  