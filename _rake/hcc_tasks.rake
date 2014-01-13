desc "Get Publications"
task :publications do
	puts "Generating Publications YAML file"
end

desc "Get People"
task :people do
	unless ENV['type']
		puts "Please specify a type, for example: 
		rake people type=Faculty
		rake people type=Students
		rake people type=Alumni
		rake people type=Researchers"
	else
		type = ENV['type']
		puts "Generating People YAML file for #{type}"
		require './_buildtasks/people'
		make_yaml(session, "./_data", type)
	end
end

desc "Full Refresh & Build"
task :fullbuild do
	puts "Doing a full build of the website:"
	puts "TODO"
end

desc "Serve Full Site from Localhost"
task :localpreview do
	puts "Building site..."
	system ("jekyll build")
	puts "Copying to localhost"
	system ("cp -r -v _site/* /Library/WebServer/Documents/")
end