Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", {:controller=>"directors", :action =>"index_directors"})
  
  get("/directors/eldest", {:controller=>"directors", :action =>"older_director"})
  
  get("/directors/youngest", {:controller=>"directors", :action =>"youngest_director"})

  get("/directors/:directorid", {:controller =>"directors", :action => "director_details"})
end
