class MoviesController < ApplicationController
  def index_movies
    @list_of_movies = Movie.all
    render({:template => "movie_templates/index.html.erb"})
  end
end