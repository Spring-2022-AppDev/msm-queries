class DirectorsController < ApplicationController
  
  def index_directors
    @list_of_directors = Director.all

    render ({:template => "director_templates/index.html.erb"})
  end

  def older_director 
    @oldest_director_find = Director.where.not({:dob => nil}).order({:dob => :asc}).first
    @oldest_director_name = @oldest_director_find.name
    @oldest_director_dob = @oldest_director_find.dob.strftime("%b %w, %Y.")
    @oldest_director_id = @oldest_director_find.id

    render({:template => "director_templates/oldest.html.erb"})
  end

  def youngest_director
    @youngest_director_find = Director.where.not({:dob => nil}).order({:dob => :asc}).last
    @youngest_director_name = @youngest_director_find.name
    @youngest_director_dob = @youngest_director_find.dob.strftime("%b %w, %Y.")
    @youngest_director_id = @youngest_director_find.id
    render({:template => "director_templates/youngest.html.erb"})
  end

  def director_details

    @director_id = params.fetch(:directorid)
    #@all_directors = Directors.all.where.not({:name => nil})

    render({:template => "director_templates/director_details.html.erb"})
  end
end
