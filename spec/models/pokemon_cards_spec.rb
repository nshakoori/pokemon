require 'rails_helper'

RSpec.describe PokemonCard, type: :model do
    it "has a valid factory" do
        expect(FactoryBot.build(:pokemon_card)).to be_valid
    end
end