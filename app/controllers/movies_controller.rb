class MoviesController < ApplicationController


  def movie_details
    # params looks like {"an_id"=>"42"}

    the_id = params.fetch("an_id")

    @the_movie = Movie.where({ :id => the_id }).at(0)
    
    render({ :template => "movie_templates/show.html.erb" })
  end
  end
