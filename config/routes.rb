Nubcycling::Application.routes.draw do

	db = Mongo::Connection.new("ds031347.mongolab.com","31347").db(DBNAME)
	auth = db.authenticate(DBUSER,DBPASS)
	constants = db.collection('neo_constants')
	apps = db.collection('neo_apps')
	app = apps.find_one("application_name" => "nubcycling")
	c = constants.find_one("neo_app_id" => app["_id"], "constant" => "Routes")
	if c
		eval c["content"]
	end
	
end