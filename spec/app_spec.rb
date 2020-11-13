require_relative 'spec_helper'

class AppSpec < PokedexAppSpec
  describe 'Pokemon Challange' do
    let(:result) { get '/' }

    it 'handles the request' do
      assert_equal 200, result.status
    end

    it 'test it says pokemon challange' do
      get '/'
      last_response.must_be :ok?
      last_response.body.must_include "Pokemon Challange"
    end

    it 'tests pokemon is not nil' do
      @pokemon = PokeApi.get(pokemon: 12)
      refute_nil @pokemon
    end

    it 'tests pokemon species is not nil' do
      @pokemon_species = PokeApi.get(pokemon_species: 16)
      refute_nil @pokemon_species
    end

    it 'tests pokemon descriptio is not empty' do
      @pokemon_text = PokeApi.get(pokemon_species: 16).flavor_text_entries
      refute_empty @pokemon_text
    end

    it 'tests color is not nil' do
      @color = PokeApi.get(pokemon_species: 66).color
      refute_nil @color
    end

    it 'tests happiness is not nil' do
      @happiness = PokeApi.get(pokemon_species: 50).base_happiness
      refute_nil @happiness
    end

    it 'tests capture rate is not nil' do
      @capture_rate = PokeApi.get(pokemon_species: 140).capture_rate
      refute_nil @capture_rate
    end

  end
end
