class AddRouteGenerator < Rails::Generators::Base

  	#source_root File.expand_path('../templates', __FILE__)
  	argument :resources, :type => :string
  
	def insert_route
    	route "resources :#{resources}"
  	end

end