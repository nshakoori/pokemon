class CreatePokemonCards < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemon_cards do |t|
        t.string :name
        t.string :hp
        t.string :rarity
    end
  end
end
