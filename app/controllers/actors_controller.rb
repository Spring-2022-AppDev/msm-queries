class ActorsController < ApplicationController

def index_actors
  @list_of_actors = Actor.all
  render({:template => "actor_templates/index.html.erb"})
end

def actor_details 
  @actor_id = params.fetch("actorid")
  @actor_name = Actor.where(:id => @actor_id).first.name
  @actor_dob = Actor.where(:id => @actor_id).first.dob
  @actor_bio = Actor.where(:id => @actor_id).first.bio
  @actor_createdat = Actor.where(:id => @actor_id).first.created_at
  @actor_updatedat = Actor.where(:id => @actor_id).first.updated_at

  @list_of_actor_movies = Character.where(:actor_id => @actor_id)

  render({:template => "actor_templates/details.html.erb"})
end

end
