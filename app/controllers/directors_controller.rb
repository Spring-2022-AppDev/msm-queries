class DirectorsController < ApplicationController
  
  def index_directors
    render ({:template => "director_templates/index.html.erb"})
  end
end
