class MoviesController < ApplicationController
  def index_movies
    @list_of_movies = Movie.all
    render({:template => "movie_templates/index.html.erb"})
  end

  def movie_details
    @movie_id = params.fetch(:movieid).first
    @movie_title = Movie.where(:id => @movie_id).first.title
    @movie_year = Movie.where(:id => @movie_id).first.year
    @movie_duration = Movie.where(:id => @movie_id).first.duration
    @movie_description = Movie.where(:id => @movie_id).first.description
    @movie_director = Movie.where(:id => @movie_id).first.director_id
    @movie_director = Director.where(:id => @movie_director).first.name  
    @movie_createdat = Movie.where(:id => @movie_id).first.created_at
    @movie_updatedat = Movie.where(:id => @movie_id).first.updated_at

    render({:template => "movie_templates/details.html.erb"})
  end
end
