class PokedexApp < Sinatra::Application
  enable :sessions
  require 'poke-api-v2'

  get '/' do
    display_page :index
  end

  def get_pokemon
    @random_pokemon_id = rand(1..248)
    @pokemon = PokeApi.get(pokemon: @random_pokemon_id)
  end

  def get_pokemon_species
    @pokemon_species = PokeApi.get(pokemon_species: @random_pokemon_id)
  end

  def display_page(location, locals = {})
    options = {
      layout_options: { views: './views/layouts' },
      layout: locals.fetch(:layout) { :default },
      locals: locals
    }
    get_pokemon
    get_pokemon_species

    erb location.to_sym, options
  end

  def display_partial(location, locals = {})
    erb location.to_sym, layout: false, locals: locals
  end
end
