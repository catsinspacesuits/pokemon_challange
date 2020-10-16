# Finiata Coding Task

### Context

The goal of this task is to get a glimpse of your code style, how you think
through a problem and a general level of your experience. You should aim to
spend about 2 hours working on this.

Clone this repository and push the results to your own github accout. When
you're finished, please send us a link to the repo.

### Instructions

When a user visits the index page of this application, use the [pokemon API](https://pokeapi.co/docs/v2#pokemon),
to fetch a random pokemon and display the following three pieces of data:

* Name
* Image
* API Url to get more information about this pokemon

**Hint: For the image, you can use the following URL once you've pulled the name:
> https://img.pokemondb.net/artwork/large/xxx.jpg

For bonus points: instead of just showing the for more information URL, use the API to show some additional stats
about the current pokemon, such as height, weight, species, abilities, etc. This
is optional and just a suggestion of a direction to go if you finish early.

#### Having a fancy frontend is not necessary for this task, as long as it is readable and completes the requirements.

### Getting Started

1. Run `bundle` to install default gemset
2. Run the server with `shotgun config.ru` and open `localhost:9393` in your
   browser

### Tests

A simple sanity check test exists in spec/app_spec.rb. You can run the full test
suite (all the tests within the spec directory) with `rake` from your terminal.

There's no pressure to add more tests, especially for the sinatra app, although
as you add library files you are encouraged to test them. This is not mandatory
and just considered a bonus.